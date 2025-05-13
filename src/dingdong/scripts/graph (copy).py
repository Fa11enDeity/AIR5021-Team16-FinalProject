#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
import cv2
import os
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class ImageSaverNode:
    def __init__(self):
        self.topic = rospy.get_param('~topic', '/camera/rgb/image_raw')
        self.save_path = rospy.get_param('~save_path', '/home/spark/spark_noetic/src/dingdong/data')
        self.bridge = CvBridge()
        self.sub = rospy.Subscriber(self.topic, Image, self.image_cb, queue_size=1)
        rospy.loginfo("Subscribed to topic: %s", self.topic)
        rospy.loginfo("Images will be saved to: %s", self.save_path)

    def image_cb(self, msg):
        try:
            # �� ROS Image ת��Ϊ OpenCV BGR ͼ��
            cv_img = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            rospy.logwarn("CvBridge Error: %s", e)
            return

        # ���ñ����ļ�����ʾ����ʹ����Ϣ�� seq ��Ϊ�ļ���
        filename = os.path.join(self.save_path, "frame_temp.png")

        # ����ͼ��
        cv2.imwrite(filename, cv_img)
        rospy.loginfo("Saved image: %s", filename)
        rospy.signal_shutdown("Image saved once and shutting down.")
        
if __name__ == '__main__':
    rospy.init_node('image_saver_node', anonymous=True)
    node = ImageSaverNode()
    rospy.spin()
