#include "ros/ros.h"
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Image.h>
#include "spark_carry_object/position.h" // 假设position消息定义在这个包里
#include <vector>
#include <map>
#include <string>
#include <utility> // For std::pair

/*
 * Software License Agreement (BSD License)
 * (Inheriting from the provided examples, assuming BSD applies)
 *
 *  Copyright (c) 2023, Your Name/Company.
 *  (Add your own copyright here)
 *
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the original authors/companies nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 */

// 定义机械臂的关节角度配置
// 使用map存储，key是配置名称，value是关节角度的vector
std::map<std::string, std::vector<double>> ARM_ANGRY_CONFIGS = {
    {"initial", {0.0, 0.0, 0.0, 0.0}},
    {"punch", {1.57, 0.0, 0.0, 0.0}}, // Example values, adjust as needed for 'punch' posture
    {"grab", {0.0, 1.57, 0.0, 0.0}},  // Assuming 'grab' means closing gripper or a specific joint movement
    {"swing", {1.57, 1.57, 0.0, 0.0}},// Example values, adjust as needed for 'swing'
    {"stop", {0.0, 0.0, 0.0, 0.0}}
};

// 定义移动底盘的速度配置
// 使用map存储，key是配置名称，value是速度的pair (linear.x, angular.z)
std::map<std::string, std::pair<double, double>> BASE_ANGRY_CONFIGS = {
    {"fast_forward", {0.3, 0.0}},
    {"fast_backward", {-0.3, 0.0}},
    {"stop", {0.0, 0.0}}, // Actual stop config
    {"shake", {0.1, 0.1}} // Larger linear and angular velocity for more aggressive shaking
};

class AngryEmotionController
{
public:
    // NodeHandle
    ros::NodeHandle nh_;

    // Publishers
    ros::Publisher arm_pub_;
    ros::Publisher base_pub_;
    ros::Publisher pos_pub_; // Publisher for position_write_topic

    // Subscriber
    ros::Subscriber image_sub_;

    // Rate for base velocity loop
    ros::Rate rate_;

    // Constructor
    AngryEmotionController(ros::NodeHandle& nh) : nh_(nh), rate_(10.0) // 10 Hz
    {
        // Initialize publishers
        // Using the topics from your Python code
        arm_pub_ = nh_.advertise<std_msgs::Float64MultiArray>("/spark_t/arm_joint_controller/command", 10);
        base_pub_ = nh_.advertise<geometry_msgs::Twist>("/spark_t/base_controller/cmd_vel", 10);
        // Using the topic and message type from your C++ MotionTest example
        pos_pub_ = nh_.advertise<spark_carry_object::position>("position_write_topic", 5);

        // Initialize subscriber and bind callback function
        image_sub_ = nh_.subscribe("/camera/image_raw", 1, &AngryEmotionController::imageCallback, this);

        ROS_INFO("AngryEmotionController node initialized.");
        ROS_INFO("Subscribing to /camera/image_raw to trigger angry sequence.");

        // Optional: Publish initial position from MotionTest example
        // This is done once on startup, not part of the sequence triggered by image
        spark_carry_object::position initial_pos;
        initial_pos.x = 120; // Example values from MotionTest
        initial_pos.y = 0;
        initial_pos.z = 35;
        // Give publishers a moment to connect (optional, but can help)
        ros::Duration(0.5).sleep();
        pos_pub_.publish(initial_pos);
        ROS_INFO("Published initial position: x=%.2f, y=%.2f, z=%.2f", initial_pos.x, initial_pos.y, initial_pos.z);
    }

    // Destructor (optional, publishers/subscribers handle cleanup)
    ~AngryEmotionController()
    {
        // Stop the base and arm if the node is shutting down
        setBaseVelocity("stop"); // Calls with duration 0, publishes stop once
        setArmJoints("stop"); // Publishes stop arm config and sleeps for 1 sec
        ROS_INFO("AngryEmotionController node shutting down.");
    }

    // Method to set arm joint angles based on config name
    void setArmJoints(const std::string& config_name)
    {
        auto it = ARM_ANGRY_CONFIGS.find(config_name);
        if (it == ARM_ANGRY_CONFIGS.end()) {
            ROS_WARN("Arm config '%s' not found.", config_name.c_str());
            // Optionally set stop config on error
            auto stop_it = ARM_ANGRY_CONFIGS.find("stop");
            if (stop_it != ARM_ANGRY_CONFIGS.end()) {
                 std_msgs::Float64MultiArray msg;
                 msg.data = stop_it->second;
                 arm_pub_.publish(msg);
            }
            return;
        }

        std_msgs::Float64MultiArray msg;
        msg.data = it->second; // Copy vector data
        arm_pub_.publish(msg);
        ROS_INFO("Setting arm to config: %s", config_name.c_str());

        // Python's set_arm_joints always had a 1-second sleep after publishing.
        // We replicate that here for simplicity and consistency with the source.
        ros::Duration(1.0).sleep();
    }


    // Method to set base velocity based on config name and duration
    void setBaseVelocity(const std::string& config_name, double duration = 0.0)
    {
        auto it = BASE_ANGRY_CONFIGS.find(config_name);
        if (it == BASE_ANGRY_CONFIGS.end()) {
            ROS_WARN("Base config '%s' not found.", config_name.c_str());
            // Optionally set stop velocity on error
            geometry_msgs::Twist stop_msg;
            stop_msg.linear.x = 0.0;
            stop_msg.angular.z = 0.0;
            base_pub_.publish(stop_msg);
            return;
        }

        geometry_msgs::Twist msg;
        msg.linear.x = it->second.first;
        msg.angular.z = it->second.second;

        ROS_INFO("Setting base velocity to config: %s (linear.x: %.2f, angular.z: %.2f)",
                 config_name.c_str(), msg.linear.x, msg.angular.z);

        if (duration > 0.0) {
            ros::Time start_time = ros::Time::now();
            // Loop to publish velocity for the specified duration
            while (ros::ok() && (ros::Time::now() - start_time).toSec() < duration) {
                base_pub_.publish(msg);
                rate_.sleep(); // Sleep according to the class rate (10 Hz)
            }
            // Python's set_base_velocity internally calls set_base_velocity("stop")
            // after the loop, unless the duration was 0.
            // To replicate this, call setBaseVelocity("stop") after the timed loop.
            setBaseVelocity("stop"); // This recursive call will have duration 0.0
        } else {
            // For duration <= 0.0 (like "stop"), just publish once
            base_pub_.publish(msg);
        }
    }

    // Execute the angry emotion sequence
    void executeAngrySequence()
    {
        ROS_INFO("Executing angry emotion sequence...");

        // 初始状态 (Python set_arm_joints includes 1s sleep)
        setArmJoints("initial");
        setBaseVelocity("stop"); // duration 0.0, publishes stop once

        // 快速前进 (Base fast_forward for 2.0s, then stop)
        setBaseVelocity("fast_forward", 2.0);
        // 同时/之后机械臂"punch" (Python set_arm_joints includes 1s sleep)
        setArmJoints("punch");

        // 突然急停 (Base stop for 1.0s, then stop again)
        setBaseVelocity("stop", 1.0);
        // 同时/之后机械臂停止 (Python set_arm_joints includes 1s sleep for arm stop)
        setArmJoints("stop");

        // 快速后退 (Base fast_backward for 1.0s, then stop)
        setBaseVelocity("fast_backward", 1.0);
        // 同时/之后机械臂"swing" (Python set_arm_joints includes 1s sleep)
        setArmJoints("swing");

        // 抓握与释放 (Python set_arm_joints includes 1s sleep *after each* call)
        setArmJoints("grab"); // Publishes grab, sleeps 1s
        ros::Duration(0.5).sleep(); // Specific 0.5s sleep from Python sequence
        setArmJoints("stop"); // Publishes stop, sleeps 1s


        // 大幅度摆动 (Python set_arm_joints includes 1s sleep for arm swing)
        setArmJoints("swing");
        // 同时/之后底盘抖动 (Base shake for 2.0s, then stop)
        setBaseVelocity("shake", 2.0);

        // 突然停止 (Python set_arm_joints includes 1s sleep for arm stop)
        setArmJoints("stop");
        // Base stop for 1.0s (publishes stop repeatedly for 1s, then stops)
        setBaseVelocity("stop", 1.0);

        ROS_INFO("Angry emotion sequence finished.");
    }

    // Callback function for the image topic
    void imageCallback(const sensor_msgs::Image::ConstPtr& msg)
    {
        ROS_INFO("Received image message, triggering angry sequence...");
        // In the Python code, any image triggers the sequence.
        // If you want to add logic here (e.g., checking for a specific detection result),
        // add it before calling executeAngrySequence().
        // For now, just call the sequence directly as in the Python code.

        // You might want to add a flag here to prevent re-triggering
        // the sequence while it's already running.
        // For simplicity, we'll run it every time an image is received.
        executeAngrySequence();
    }
};

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "angry_emotion_controller");

    // Create a NodeHandle
    ros::NodeHandle nh;

    // Create an instance of the AngryEmotionController class
    AngryEmotionController controller(nh);

    // Keep the node alive and process callbacks
    ros::spin();

    return 0;
}
