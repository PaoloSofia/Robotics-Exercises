#include <ros/ros.h>

void messageReceived(const float[] & msg);

int main(int argc, char **argv)
{
    ros::init(argc, argv, "subscriber");
    ros::NodeHandle nh;
    ros::Subscriber subscriber = nh.subscribe("positions", 1, messageReceived);
    
    ros::spin();
    ros::shutdown();
    return 0;
}

void messageReceived(const float[] & msg)
{
    ROS_INFO(msg[0]);
    ROS_INFO(msg[1]);
    ROS_INFO(msg[2]);
    ROS_INFO(msg[3]);
    ROS_INFO(msg[4]);
    ROS_INFO(msg[5]);

}