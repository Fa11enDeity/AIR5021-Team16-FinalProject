#include <ros/ros.h>
#include <std_msgs/String.h> // 新增：订阅情绪字符串需要
#include <swiftpro/position.h>
#include <cmath>
#include <vector>

// 全局变量，用于存储当前接收到的情绪状态是否为“高兴”
static bool g_is_happy = false;
static bool g_is_sad = false;
static bool g_is_angry = false;
static bool g_is_calm = false;
#define PI 3.1415926

// 回调函数：当订阅到“emotion_text”时被调用
void emotionCallback(const std_msgs::String::ConstPtr& msg)
{
// 如果消息内容是"高兴"，则置标志位为true，否则为false
if (msg->data == "高兴")
{
ROS_INFO_STREAM("Received emotion: " << msg->data << " => will move the robot arm.");
g_is_happy = true;
}
else if (msg -> data == "伤心")
{
ROS_INFO_STREAM("Received emotion: " << msg->data << " => will NOT move the robot arm.");
g_is_sad = true;
}
else if (msg -> data == "生气")
{
ROS_INFO_STREAM("Received emotion: " << msg->data << " => will NOT move the robot arm.");
g_is_angry = true;
}
else if (msg -> data == "平静")
{
ROS_INFO_STREAM("Received emotion: " << msg->data << " => will NOT move the robot arm.");
g_is_calm = true;
}
}

int main(int argc, char** argv)
{
ros::init(argc, argv, "swiftpro_control_sequence");
ros::NodeHandle nh;

// 订阅情绪话题 emotion_text
ros::Subscriber emotion_sub = nh.subscribe("emotion_result", 10, emotionCallback);

// 发布机械臂位置的topic
ros::Publisher position_pub = nh.advertise<swiftpro::position>("position_write_topic", 10);

// 发布频率: 每秒发布一次(可自行调整加快/减慢)
ros::Rate loop_rate(1);

// 稍等 2 秒，等待节点和话题就绪(可选)
ros::Duration(2.0).sleep();

// 构造一个目标位置向量
std::vector<swiftpro::position> target_positions_happy;
{
    swiftpro::position p;

    p.x = 131;  p.y = 5;    p.z = 80;
    target_positions_happy.push_back(p);

    p.x = 137;  p.y = -115; p.z = 165;
    target_positions_happy.push_back(p);

    p.x = 133;  p.y = -144; p.z = 117;
    target_positions_happy.push_back(p);

    p.x = 137;  p.y = -115; p.z = 50;
    target_positions_happy.push_back(p);

    p.x = 131;  p.y = 5;    p.z = 80;
    target_positions_happy.push_back(p);

    p.x = 137;  p.y = 125;  p.z = 165;
    target_positions_happy.push_back(p);

    p.x = 133;  p.y = 155;  p.z = 117;
    target_positions_happy.push_back(p);

    p.x = 137;  p.y = 125;  p.z = 50;
    target_positions_happy.push_back(p);

    p.x = 131;  p.y = 5;    p.z = 80;
    target_positions_happy.push_back(p);
}

// 构造一个目标位置向量
std::vector<swiftpro::position> target_positions_sad;
{
    swiftpro::position p;

    p.x = 240;  p.y = 5;    p.z = 173;
    target_positions_sad.push_back(p);

    p.x = 161;  p.y = 5; p.z = -188;
    target_positions_sad.push_back(p);

    p.x = 198;  p.y = -4; p.z = -126;
    target_positions_sad.push_back(p);

    p.x = 104;  p.y = -165;  p.z = -107;
    target_positions_sad.push_back(p);

    p.x = 31;  p.y = -206;    p.z = -90;
    target_positions_sad.push_back(p);

    p.x = 31;  p.y = -88;  p.z = 31;
    target_positions_sad.push_back(p);
}

// 构造一个目标位置向量
std::vector<swiftpro::position> target_positions_angry;
{
    swiftpro::position p;
    p.x = 245;  p.y = 0;    p.z = 173; 
    target_positions_angry.push_back(p);

    p.x = 245;  p.y = 0;    p.z = 127;
    target_positions_angry.push_back(p);

    p.x = 245;  p.y = 0;    p.z = 40; 
    target_positions_angry.push_back(p);

    p.x = 150;  p.y = 196;    p.z = 173;
    target_positions_angry.push_back(p);

    p.x = 150;  p.y = 196;    p.z = 127; 
    target_positions_angry.push_back(p);

    p.x = 150;  p.y = 196;    p.z = 40;  
    target_positions_angry.push_back(p);

    p.x = 140;  p.y = -100;    p.z = 173;  
    target_positions_angry.push_back(p);

    p.x = 140;  p.y = -100;    p.z = 127;
    target_positions_angry.push_back(p);

    p.x = 140;  p.y = -100;    p.z = 40;
    target_positions_angry.push_back(p);
}

// 构造一个目标位置向量
std::vector<swiftpro::position> target_positions_calm;
{
    swiftpro::position p;
    p.x = 180;
    for(int i = 0; i < 17; i++){
        p.y = -160 + 280/17 * i;
        p.z = sin(i * 45 * PI / 180.0f) * 40 + 80;
        target_positions_calm.push_back(p);
    }
    
}




while (ros::ok())
{
    // 处理回调，更新情绪标志位
    ros::spinOnce();

    // 如果当前情绪是“高兴”，则执行机械臂运动
    if (g_is_happy)
    {
        ROS_INFO("Robot arm will execute the motion sequence...");

        // 执行运动序列
        for (size_t i = 0; i < target_positions_happy.size() && ros::ok(); ++i)
        {
            // 每个目标点重复发布 N 次(这里设置为3)，可视机械臂需求调整
            int repeatCount = 1;

            for(int j = 0; j < repeatCount && ros::ok(); ++j)
            {
                position_pub.publish(target_positions_happy[i]);
                ROS_INFO_STREAM("Publishing target position: x=" << target_positions_happy[i].x
                                 << " y=" << target_positions_happy[i].y
                                 << " z=" << target_positions_happy[i].z);

                ros::spinOnce();       // 让回调继续处理
                loop_rate.sleep();     // 等待1秒(频率1Hz)
            }
        }

        // 如果只想执行“一次”运动，就把 g_is_happy 重置为 false
        // 这样下次必须再次接收到“高兴”才会执行
        g_is_happy = false;
    }

    else if (g_is_sad)
    {
        ROS_INFO("Robot arm will execute the motion sequence...");

        // 执行运动序列
        for (size_t i = 0; i < target_positions_sad.size() && ros::ok(); ++i)
        {
            // 每个目标点重复发布 N 次(这里设置为3)，可视机械臂需求调整
            int repeatCount = 1;

            for(int j = 0; j < repeatCount && ros::ok(); ++j)
            {
                position_pub.publish(target_positions_sad[i]);
                ROS_INFO_STREAM("Publishing target position: x=" << target_positions_sad[i].x
                                 << " y=" << target_positions_sad[i].y
                                 << " z=" << target_positions_sad[i].z);

                ros::spinOnce();       // 让回调继续处理
                loop_rate.sleep();     // 等待1秒(频率1Hz)
            }
        }
        g_is_sad = false;
    }
    else if (g_is_angry)
    {
        ROS_INFO("Robot arm will execute the motion sequence...");

        // 执行运动序列
        for (size_t i = 0; i < target_positions_angry.size() && ros::ok(); ++i)
        {
            // 每个目标点重复发布 N 次(这里设置为3)，可视机械臂需求调整
            int repeatCount = 1;

            for(int j = 0; j < repeatCount && ros::ok(); ++j)
            {
                position_pub.publish(target_positions_angry[i]);
                ROS_INFO_STREAM("Publishing target position: x=" << target_positions_angry[i].x
                                 << " y=" << target_positions_angry[i].y
                                 << " z=" << target_positions_angry[i].z);

                ros::spinOnce();       // 让回调继续处理
                loop_rate.sleep();     // 等待1秒(频率1Hz)
            }
        }
        g_is_angry = false;
    }
    else if (g_is_calm)
    {
        ROS_INFO("Robot arm will execute the motion sequence...");

        // 执行运动序列
        for (size_t i = 0; i < target_positions_calm.size() && ros::ok(); ++i)
        {
            // 每个目标点重复发布 N 次(这里设置为3)，可视机械臂需求调整
            int repeatCount = 1;

            for(int j = 0; j < repeatCount && ros::ok(); ++j)
            {
                position_pub.publish(target_positions_calm[i]);
                ROS_INFO_STREAM("Publishing target position: x=" << target_positions_angry[i].x
                                 << " y=" << target_positions_calm[i].y
                                 << " z=" << target_positions_calm[i].z);

                ros::spinOnce();       // 让回调继续处理
                loop_rate.sleep();     // 等待1秒(频率1Hz)
            }
        }
        g_is_calm = false;
    }
    loop_rate.sleep();
}

return 0;
}