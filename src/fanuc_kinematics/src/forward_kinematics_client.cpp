#include <ros/ros.h>

// MoveIt
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <Eigen/Eigen>
#include <fanuc_kinematics/ForwardKinematics.h>
#include <fanuc_kinematics/ForwardKinematicsRequest.h>
#include <fanuc_kinematics/ForwardKinematicsResponse.h>

#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Transform.h>
#include <geometry_msgs/Quaternion.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32MultiArray.h>
#include <std_msgs/MultiArrayLayout.h>
#include <tf2/LinearMath/Matrix3x3.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Transform.h>
#include <tf2/LinearMath/Vector3.h>

int main(int argc, char **argv) {
    ros::init(argc, argv, "forward_kinematics_client");
    if (argc != 2) {
        ROS_INFO("usage: compute the forward kinematics of the link %s",atoi(argv[1]));
        return 1;
    }

    ros::NodeHandle nh;
    ros::ServiceClient client =
    nh.serviceClient<fanuc_kinematics::ForwardKinematics>("forward_kinematics");
    
    fanuc_kinematics::ForwardKinematics service;

    service.request.link_name = atoi(argv[1]);
    
    if (client.call(service)) {

        ROS_INFO("\nTraslation:\n %f\t%f\t%f", service.response.translation[0],
                                            service.response.translation[1],
                                            service.response.translation[2]
        );
        ROS_INFO("\nRotation:\n %f\t%f\t%f\n%f\t%f\t%f\n%f\t%f\t%f",
                                            service.response.rotation[0],
                                            service.response.rotation[1],
                                            service.response.rotation[2],
                                            service.response.rotation[3],
                                            service.response.rotation[4],
                                            service.response.rotation[5],
                                            service.response.rotation[6],
                                            service.response.rotation[7],
                                            service.response.rotation[8]
        );
    } else {
        ROS_ERROR("Failed to call service forward_kinematics");
        return 1;
    }
    return 0;
} 
