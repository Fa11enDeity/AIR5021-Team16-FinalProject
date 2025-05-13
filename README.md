# AIR5021-Team16-FinalProject
This project provides a voice and vision analysis method for NXROBO Spark-T. The main body of the project is expanded based on the github repository <https://github.com/NXROBO/spark/>. Please refer to the environmental configuration of this warehouse and the related test cases.

## Extra Motion Module
Extra motion module is in ~/src/spark_driver/arm/uArm/swiftpro/src/lift_arm_node.cpp.
This module uses the ROS topics provided by swiftpro. This project uses *swiftpro_read_node* and *swiftpro_write_node*, respectively providing the topic for reading terminal coordinates: *SwiftproState_topic* and the topic for writing terminal coordinates for kinematic planning: *position_write_topic*. The xyz coordinates of the terminal can be obtained by listening to *SwiftproState_topic*. By passing the position messages to *position_write_topic*, the robotic arm can be moved to a specific position.

In *lift_arm_node.cpp*, four actions corresponding to emotions are defined:  
**-** Happy: The mechanical arm draws an "∞" symbol  
**-** Sadness: The mechanical arm leaned to one side and curled up  
**-** Anger: The robotic arm simulates the hammering action  
**-** Calmness: The robotic arm draws the wave symbol (implemented with a sine function)

Before using roslaunch *swiftpro lift_arm.launch*, it is necessary to open the hardware instance using *roslaunch swiftpro swift_read.launch* first. And use *roslaunch swiftpro swift_write.launch* to create relevant topics.

## Extra Voice Module
Extra voice module is in ~/src/dingdong/scripts/my_asr_3.py.
This module uses the *Microphone* class provided in ~/src/spark_app/spark_voice/scripts/lib under the original Spark-T project to obtain the microphone input. Microphone class uses pyaudio to recognize the microphone interface, acquires the microphone input frame by frame, and concatenates it to generate a wav file at the frame rate.  

The voice module uses wav files, conducts voice recognition with the large model GLM_ASR of [ZHIPU QINGYAN](https://bigmodel.cn/ "Go to Official Website"), analyzes the voice recognition result text with GLM_4_PLUS, obtains the voice emotion, and passes the result to the action module through the ROS topic *emotion_result*.  

When using this module, directly use roslaunch dingdong voice_capture.launch.

## Extra Vision Module
Extra vision module is in ~/emotion-server.  

This module uses the hardware interface provided by the *astra_camera* package provided by the original Spark-T project ~/src/spark_driver/camera/astra_camera. The astra_camera package conducts input acquisition for three types of cameras and obtains the nodes of grayscale images, depth images, and color images respectively.
In this project, subscribe to the topic */camera/rgb/image_raw* to obtain the chroma map of the astra_pro camera, and use Deepface for image sentiment recognition.  

When in use, the following need to be executed in sequence:  
python3 server.py  
roslaunch astra_camera astrapro.launch  
roslaunch dingdong graph_capture.launch  
