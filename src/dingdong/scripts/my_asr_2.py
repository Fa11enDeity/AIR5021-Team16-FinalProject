#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
from std_msgs.msg import String
import logging
import time
from threading import Thread, Event
import os
from zhipuai import ZhipuAI
import wave
from lib import Microphone

# 智谱AI配置及唤醒词
API_KEY = "be4de28ba08a4063aa5dd0d77ed2bc0b.0MjWCQiU8L55NtQb"
API_KEY_WU = "5779d36ada894cd58f7c34145767ef87.LJafl3orGWhmod70"
API_KEY_EM = "95d6c713e4a449538ebd236d8f5c53ae.h0mTJQxZ4PmV0kWJ"
WAKE_WORD = "Cube"
AUDIO_SAMPLE_RATE = 16000  
MAX_WAIT_TIME = 50  # 唤醒后最大处理时长（秒），这里改为30秒

def save_as_wav(data, prefix):
    filename = prefix + '.wav'  
    with wave.open(filename, 'wb') as f:
        f.setframerate(16000)    
        f.setsampwidth(2)         
        f.setnchannels(1)         
        f.writeframes(data)       
    return filename  

class VoiceRecognitionNode:
    def __init__(self):
        rospy.init_node('zhipuai_asr', anonymous=True)
        self.pub = rospy.Publisher('voice/stt', String, queue_size=10)
        self.quit_event = Event()
        self.mic = Microphone(quit_event=self.quit_event)
        self.client_voice = ZhipuAI(api_key=API_KEY)
        self.client_wake = ZhipuAI(api_key=API_KEY_WU)
        self.client_emo = ZhipuAI(api_key=API_KEY_EM)
        self.wav_prefix = "/home/spark/spark_noetic/src/dingdong/data/tmp_mono"
        self.wav_emo_prefix = "/home/spark/spark_noetic/src/dingdong/data/tmp_emo"
        self.judge_prompt = f"判断下一个文本是否在呼唤'{WAKE_WORD}'，需结合语境（如包含指向性语句），直接回答'是'或'否'：\n{{0}}"
        self.emotion_prompt = f"请判断以下文本体现了“厌恶，恐惧，高兴，平静，伤心，惊讶，愤怒”中的哪一种情绪。如果无法判断，请回复“平静”。\n\n文本：{{0}}\n\n请直接回答情绪名称。"

    def listen_and_recognize(self):
        """后台线程执行的核心循环"""
        while not self.quit_event.is_set():
            try:
                # 1. 基础音频处理流程
                audio_frames = self.mic.listen(duration=3)  # 短时监听提高响应速度
                pcm_data = self.collect_frames(audio_frames)
                if not pcm_data:
                    continue
                wav_path = save_as_wav(pcm_data, self.wav_prefix)
                
                asr_text = self.speech_to_text(wav_path)
                if not asr_text:
                    continue
                
                # 2. 唤醒词判断
                is_wake = self.judge_wake_word(asr_text)
                rospy.loginfo(f"识别结果：{asr_text}，唤醒状态：{is_wake}")
                
                # 3. 唤醒后处理（在当前线程执行，保持原子性）
                if is_wake:
                    print("Cube has been waked up.")
                    self.handle_wake_trigger(asr_text)  # 封装唤醒后处理逻辑
                else:
                    self.pub.publish(asr_text)  # 非唤醒词正常发布
                
            except Exception as e:
                rospy.logerr(f"处理异常：{str(e)}")
            finally:
                if os.path.exists(wav_path):
                    os.remove(wav_path)  # 清理临时文件

    def handle_wake_trigger(self, trigger_text):
        """唤醒后处理逻辑（独立函数保持清晰）"""
        rospy.loginfo(f"唤醒词'{WAKE_WORD}'触发，进入服务窗口（{MAX_WAIT_TIME}秒）")
        start_time = time.time()
        
        while (time.time() - start_time < MAX_WAIT_TIME 
               and not self.quit_event.is_set()):
            # 再次监听用户说话
            audio_frames = self.mic.listen(duration=5)
            pcm_data = self.collect_frames(audio_frames)
            if pcm_data:
                wav_path = save_as_wav(pcm_data, self.wav_emo_prefix)
                try:
                    user_text = self.speech_to_text(wav_path)
                    if user_text:
                        print(user_text)
                        emotion = self.judge_emotion(user_text)
                        rospy.loginfo(f"用户情绪判断结果：{emotion}")
                        print(emotion)
                        self.pub.publish(emotion)
                        start_time = time.time()  # 重置倒计时
                except Exception as e:
                    rospy.logerr(f"处理用户话语异常：{str(e)}")
                finally:
                    if os.path.exists(wav_path):
                        os.remove(wav_path)
            else:
                time.sleep(1)  # 没有检测到声音，等待1秒
                rospy.loginfo("等待用户指令...（剩余时间：%.1fs）" % (MAX_WAIT_TIME - (time.time() - start_time)))
        
        rospy.loginfo("唤醒服务窗口关闭，恢复常规监听")

    def judge_wake_word(self, text):
        response = self.client_wake.chat.completions.create(
            model="glm-4-plus", 
            messages=[
                {"role": "system", "content": self.judge_prompt},
                {"role": "user", "content": text}
            ],
        )
        return response.choices[0].message.content.strip().lower() == "是"

    def judge_emotion(self, text):
        response = self.client_emo.chat.completions.create(
            model="glm-4-plus",
            messages=[
                {"role": "system", "content": self.emotion_prompt},
                {"role": "user", "content": text}
            ]
        )
        return response.choices[0].message.content.strip()

    def collect_frames(self, frames_generator):
        pcm_data = b''
        for frame in frames_generator:
            if frame == '':
                break
            pcm_data += frame
        return pcm_data

    def speech_to_text(self, wav_file):
        with open(wav_file, "rb") as audio_file:
            response = self.client_voice.audio.transcriptions.create(
                model="glm-asr", file=audio_file, stream=False
            )
        print(response.text)
        return response.text

    def shutdown_hook(self):
        self.quit_event.set()
        rospy.loginfo("节点关闭，触发线程退出信号")
        self.mic.close()  # 确保麦克风资源释放

if __name__ == '__main__':
    try:
        node = VoiceRecognitionNode()
        rospy.on_shutdown(node.shutdown_hook)
        
        # 恢复原始多线程结构
        listen_thread = Thread(target=node.listen_and_recognize, daemon=True)
        listen_thread.start()
        
        # 主线程处理ROS事件循环
        rospy.loginfo("主线程进入ROS事件循环")
        rospy.spin()  # 阻塞直到节点关闭
        
        listen_thread.join()  # 等待后台线程结束（理论上daemon线程无需强制join）
        rospy.loginfo("节点完全退出")
        
    except rospy.ROSInterruptException:
        rospy.loginfo("接收到ROS中断信号，准备退出")
