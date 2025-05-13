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

# 智谱AI配置
API_KEY = "be4de28ba08a4063aa5dd0d77ed2bc0b.0MjWCQiU8L55NtQb"
AUDIO_SAMPLE_RATE = 16000  # 智谱AI支持的采样率
AUDIO_FORMAT = "wav"
FRAMES_PER_BUFFER = 512    # 与Microphone类中的配置一致


def save_as_wav(data, prefix):
    prefix = prefix.replace(' ', '_')
    filename = prefix + '.wav'  # 生成唯一文件名
    
    with wave.open(filename, 'wb') as f:
        f.setframerate(16000)    # 固定采样率
        f.setsampwidth(2)         # 16位精度（2字节）
        f.setnchannels(1)         # 单声道（Microphone类已保证）
        f.writeframes(data)       # 写入PCM数据
    return filename  # 添加返回语句（原函数需补充此句）

class VoiceRecognitionNode:
    def __init__(self):
        rospy.init_node('zhipuai_asr', anonymous=True)
        self.pub = rospy.Publisher('voice/stt', String, queue_size=10)
        self.quit_event = Event()
        
        # 初始化麦克风（已设置为单声道、16kHz）
        #self.mic = Microphone(quit_event=self.quit_event, sample_rate=AUDIO_SAMPLE_RATE)
        self.mic = Microphone(quit_event=self.quit_event)
        self.client = ZhipuAI(api_key=API_KEY)
        
        # 临时音频文件路径（单声道PCM直接保存为WAV）
        self.wav_prefix = "/home/spark/spark_noetic/src/dingdong/data/tmp_mono"  # 自定义前缀

    def listen_and_recognize(self):
        while not self.quit_event.is_set() and not rospy.is_shutdown():
            # 1. 获取音频帧生成器
            audio_frames = self.mic.listen(duration=5)
            pcm_data = self.collect_frames(audio_frames)
            if not pcm_data:
                continue

            # 2. 使用Microphone类的save_as_wav函数保存音频（关键修改点）
            saved_filename = save_as_wav(pcm_data, self.wav_prefix)  # 调用原类中的函数
            rospy.loginfo(f"保存的WAV文件: {saved_filename}")

            # 3. 调用智谱AI识别（使用保存的文件名）
            try:
                text = self.speech_to_text(saved_filename)
                if text:
                    self.pub.publish(text)
                    print(text)
            except Exception as e:
                rospy.logerr(f"识别失败: {e}")
            time.sleep(0.1)

    def collect_frames(self, frames_generator):
        """收集音频帧并拼接为PCM数据流"""
        pcm_data = b''
        for frame in frames_generator:
            if frame == '':
                break
            pcm_data += frame
        return pcm_data

    def speech_to_text(self, wav_file):
        """调用智谱AI接口（直接使用保存的文件名）"""
        with open(wav_file, "rb") as audio_file:
            response = self.client.audio.transcriptions.create(
                model="glm-asr", file=audio_file, stream=False
            )
        #if response.status_code == 200:
            #return response.text
        #else:
            #raise Exception(f"API错误: {response.status_code}")
        return response.text


    def shutdown_hook(self):
        """节点关闭钩子"""
        self.quit_event.set()
        rospy.loginfo("智谱AI语音识别节点关闭")
        if os.path.exists(self.tmp_mono_file):
            os.remove(self.tmp_mono_file)
        self.mic.close()  # 关闭麦克风资源

if __name__ == '__main__':
    try:
        node = VoiceRecognitionNode()
        rospy.on_shutdown(node.shutdown_hook)
        
        listen_thread = Thread(target=node.listen_and_recognize)
        listen_thread.start()
        
        rospy.spin()
        listen_thread.join()
    except rospy.ROSInterruptException:
        rospy.loginfo("ROS中断异常，节点退出")

