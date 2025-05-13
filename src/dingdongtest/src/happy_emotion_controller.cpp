#include "ros/ros.h"
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Image.h>
#include "spark_carry_object/position.h" // 假设position消息定义在这个包里
#include <vector>
#include <map>
#include <string>
#include <utility> // For std::pair

// 定义机械臂的关节角度配置
// 使用map存储，key是配置名称，value是关节角度的vector
std::map<std::string, std::vector<double>> ARM_HAPPY_CONFIGS = {
    {"initial", {0.0, 0.0, 0.0, 0.0}},
    {"spin", {0.0, 0.0, 1.57, 0.0}},
    {"wave", {0.0, 1.57, 0.0, 0.0}},
    {"extend", {1.57, 0.0, 0.0, 0.0}},
    {"jump", {1.57, 1.57, 1.57, 0.0}},
    {"stop", {0.0, 0.0, 0.0, 0.0}}
};

// 定义移动底盘的速度配置
// 使用map存储，key是配置名称，value是速度的pair (linear.x, angular.z)
std::map<std::string, std::pair<double, double>> BASE_HAPPY_CONFIGS = {
    {"spin", {0.0, 0.5}},
    {"shake", {0.1, 0.1}},
    {"fast_forward", {0.3, 0.0}},
    {"stop", {0.0, 0.0}}
};

class HappyEmotionController
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
    HappyEmotionController(ros::NodeHandle& nh) : nh_(nh), rate_(10.0) // 10 Hz
    {
        // Initialize publishers
        arm_pub_ = nh_.advertise<std_msgs::Float64MultiArray>("/spark_t/arm_joint_controller/command", 10);
        base_pub_ = nh_.advertise<geometry_msgs::Twist>("/spark_t/base_controller/cmd_vel", 10);
        pos_pub_ = nh_.advertise<spark_carry_object::position>("position_write_topic", 5); // Use topic name from MotionTest

        // Initialize subscriber and bind callback function
        image_sub_ = nh_.subscribe("/camera/image_raw", 1, &HappyEmotionController::imageCallback, this);

        ROS_INFO("HappyEmotionController node initialized.");
        ROS_INFO("Subscribing to /camera/image_raw to trigger happy sequence.");

        // Optional: Publish initial position from MotionTest example
        // This is done once on startup, not part of the sequence triggered by image
        spark_carry_object::position initial_pos;
        initial_pos.x = 120;
        initial_pos.y = 0;
        initial_pos.z = 35;
        // Give publishers a moment to connect (optional, but can help)
        ros::Duration(0.5).sleep();
        pos_pub_.publish(initial_pos);
        ROS_INFO("Published initial position: x=%.2f, y=%.2f, z=%.2f", initial_pos.x, initial_pos.y, initial_pos.z);
    }

    // Destructor (optional, publishers/subscribers handle cleanup)
    ~HappyEmotionController()
    {
        // Stop the base and arm if the node is shutting down
        setBaseVelocity("stop");
        setArmJoints("stop");
        ROS_INFO("HappyEmotionController node shutting down.");
    }

    // Method to set arm joint angles based on config name
    void setArmJoints(const std::string& config_name)
    {
        auto it = ARM_HAPPY_CONFIGS.find(config_name);
        if (it == ARM_HAPPY_CONFIGS.end()) {
            ROS_WARN("Arm config '%s' not found.", config_name.c_str());
            // Optionally set stop config on error
            setArmJoints("stop"); // Recursive call, ensure "stop" config exists
            return;
        }

        std_msgs::Float64MultiArray msg;
        msg.data = it->second; // Copy vector data
        arm_pub_.publish(msg);
        ROS_INFO("Setting arm to config: %s", config_name.c_str());

        // Equivalent of rospy.sleep(1)
        ros::Duration(1.0).sleep();
    }

    // Method to set base velocity based on config name and duration
    void setBaseVelocity(const std::string& config_name, double duration = 0.0)
    {
        auto it = BASE_HAPPY_CONFIGS.find(config_name);
        if (it == BASE_HAPPY_CONFIGS.end()) {
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
            // Ensure robot stops after the duration is over
            setBaseVelocity("stop"); // Recursively call with duration 0.0
        } else {
            // For duration <= 0.0 (like "stop"), just publish once
            base_pub_.publish(msg);
        }
    }

    // Execute the happy emotion sequence
    void executeHappySequence()
    {
        ROS_INFO("Executing happy emotion sequence...");

        // 初始状态
        setArmJoints("initial");
        setBaseVelocity("stop"); // duration 0.0

        // 轻快旋转
        setBaseVelocity("spin", 2.0); // Spin for 2 seconds
        setArmJoints("spin");

        // 上下摆动
        setArmJoints("wave");
        setBaseVelocity("shake", 2.0); // Shake base for 2 seconds

        // 快速伸展
        setArmJoints("extend");
        setBaseVelocity("fast_forward", 1.0); // Move forward for 1 second

        // 轻微跳跃 (Arm jump + Base shake)
        setArmJoints("jump");
        setBaseVelocity("shake", 1.0); // Shake base for 1 second

        // 突然停止
        setArmJoints("stop");
        setBaseVelocity("stop"); // Duration 0.0, publish stop velocity once

        // 轻快旋转
        setBaseVelocity("spin", 2.0); // Spin for 2 seconds
        setArmJoints("spin");

        // 突然停止
        setArmJoints("stop");
        setBaseVelocity("stop"); // Duration 0.0, publish stop velocity once

        ROS_INFO("Happy emotion sequence finished.");
    }

    // Callback function for the image topic
    void imageCallback(const sensor_msgs::Image::ConstPtr& msg)
    {
        ROS_INFO("Received image message, triggering happy sequence...");
        // In the Python code, any image triggers the sequence.
        // If you want to add logic here (e.g., checking for a specific detection result),
        // add it before calling executeHappySequence().
        // For now, just call the sequence directly as in the Python code.

        // You might want to add a flag here to prevent re-triggering
        // the sequence while it's already running.
        // For simplicity, we'll run it every time an image is received.
        executeHappySequence();
    }
};

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "happy_emotion_controller");
    
    ROS_INFO("1");

    // Create a NodeHandle
    ros::NodeHandle nh;
    
    ROS_INFO("2");

    // Create an instance of the HappyEmotionController class
    HappyEmotionController controller(nh);
    
    ROS_INFO("3");

    controller.executeHappySequence();
    
    ROS_INFO("4");

    // Keep the node alive and process callbacks
    ros::spin();
    
    ROS_INFO("5");

    return 0;
}



