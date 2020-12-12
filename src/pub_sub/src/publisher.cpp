#include <ros/ros.h>
#include<cstdlib>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;
    ros::Publisher publisher = nh.advertise<float[]>("positions", 1);
    ros::Rate rate(1);
    srand(time(0));

    float position[6];
    position[0] = 0.0;
    position[1] = 0.0;
    position[2] = 0.0;
    position[3] = 0.0;
    position[4] = 0.0;
    position[5] = 0.0;

    while(ros::ok())
    {
        publisher.publish(position);
        ros::spinOnce();
        rate.sleep();    

        position[0] = rand()%1;
        position[1] = rand()%1;
        position[2] = rand()%1;
        position[3] = rand()%1;
        position[4] = rand()%1;
        position[5] = rand()%1;   
    }

    ros::shutdown();
    return 0;
}