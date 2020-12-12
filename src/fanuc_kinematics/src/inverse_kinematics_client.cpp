#include <ros/ros.h>
#include <stdlib.h>

#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
// MoveIt
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <fanuc_kinematics/IKAction.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseArray.h>
#include <moveit/kinematics_base/kinematics_base.h>
//#include <moveit/pr2_arm_kinematics_plugin.h>

int main (int argc, char **argv)
{
  ros::init(argc, argv, "ik_client");

  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<fanuc_kinematics::IKAction> ac("ik_server", true);

  ROS_INFO("Waiting for action server to start.");
  // wait for the action server to start
  ac.waitForServer(); //will wait for infinite time

  ROS_INFO("Action server started, sending goal.");
  // send a goal to the action
  fanuc_kinematics::IKGoal goal;
  goal.pose.position.x = 0.1;
  goal.pose.position.y = 0;
  goal.pose.position.z = 0.5;
  goal.pose.orientation.x = 0;
  goal.pose.orientation.y = 0;
  goal.pose.orientation.z = 0;
  goal.pose.orientation.w = 0;

  ac.sendGoal(goal);

  //wait for the action to return
  bool finished_before_timeout = ac.waitForResult(ros::Duration(30.0));

  if (finished_before_timeout)
  {
    actionlib::SimpleClientGoalState state = ac.getState();
    ROS_INFO("Action finished: %s",state.toString().c_str());
  }
  else
    ROS_INFO("Action did not finish before the time out.");

  //exit
  return 0;
}