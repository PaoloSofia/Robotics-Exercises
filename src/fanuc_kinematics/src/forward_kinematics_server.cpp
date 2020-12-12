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


bool direct_kinematics(fanuc_kinematics::ForwardKinematics::Request &request,
fanuc_kinematics::ForwardKinematics::Response &response)
{
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();


    robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
    kinematic_state->setToDefaultValues();

    const robot_state::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("fanuc");

    const std::vector<std::string>& joint_names = joint_model_group->getVariableNames();

    // Forward Kinematics
    const Eigen::Isometry3d& end_effector_state = kinematic_state->getGlobalLinkTransform(request.link_name);
     
    std::vector<float> rotation;
    std::vector<float> translation; 

    for(int i = 0; i < 3; i++){
        translation.push_back(end_effector_state.translation()(i));
        for(int j = 0; j < 3; j++){
            rotation.push_back(end_effector_state.rotation()(i,j));
        }
    }

    response.rotation = rotation;
    response.translation = translation;
    
    ROS_INFO("Sending response");    
        
    ROS_INFO_STREAM("Translation: \n" << end_effector_state.translation() << "\n");
    ROS_INFO_STREAM("Rotation: \n" << end_effector_state.rotation() << "\n");	
    return true;

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "forward_kinematics_server");
    ros::NodeHandle n;

    

    // %Tag(SERVICE_SERVER)%
    ros::ServiceServer service = n.advertiseService("forward_kinematics", direct_kinematics);
    // %EndTag(SERVICE_SERVER)%

    ros::spin();

    return 0;
}
