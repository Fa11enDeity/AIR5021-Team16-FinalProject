#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
import cv2
import os
import time
import base64
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import requests
import argparse

IMAGE_PATH = '/home/spark/spark_noetic/src/dingdong/data'
IMAGE_NAME = 'frame_temp.png'

class ImageSaverNode:
    def __init__(self):
        self.topic = rospy.get_param('~topic', '/camera/rgb/image_raw')
        self.save_path = rospy.get_param('~save_path', IMAGE_PATH)
        self.bridge = CvBridge()
        self.sub = rospy.Subscriber(self.topic, Image, self.image_cb, queue_size=1)
        rospy.loginfo("Subscribed to topic: %s", self.topic)
        rospy.loginfo("Images will be saved to: %s", self.save_path)

    def image_cb(self, msg):
        try:
            cv_img = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            rospy.logwarn("CvBridge Error: %s", e)
            return

        filename = os.path.join(self.save_path, IMAGE_NAME)

        cv2.imwrite(filename, cv_img)
        rospy.loginfo("Saved image: %s", filename)
        
        ts = int(time.time())
        with open(filename, 'rb') as f:
            b64 = base64.b64encode(f.read()).decode('utf-8')

        payload = {
            "filename": IMAGE_NAME,
            "timestamp": ts,
            "image": b64
        }
        try:
            resp = requests.post('http://localhost:5000/predict', json=payload, timeout=1000)
            print(f"{IMAGE_NAME} -> {resp.status_code} {resp.json()}")
        except Exception as e:
            print(f"{IMAGE_NAME} -> ERROR: {e}")

        time.sleep(100)
        rospy.signal_shutdown("Image saved once and shutting down.")
        

        
        
if __name__ == '__main__':
    rospy.init_node('image_saver_node', anonymous=True)
    node = ImageSaverNode()
    rospy.spin()
