#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

#include <moveit_dp_redundancy_resolution/workspace_trajectory.h>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "trajectory_planning");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();


  static const std::string PLANNING_GROUP = "fanuc";

  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);


  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

  const moveit::core::JointModelGroup* joint_model_group =
      move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);


  //load the trajectory from file
  moveit_dp_redundancy_resolution::WorkspaceTrajectory workspace_trajectory("trajectory","data/fanuc.traj");


  // Visualization
  namespace rvt = rviz_visual_tools;
  
  //moveit_visual_tools::MoveItVisualTools visual_tools();

  moveit_visual_tools::MoveItVisualTools visual_tools("world");
  visual_tools.deleteAllMarkers();
  visual_tools.publishPath(workspace_trajectory.getWaypoints(), rvt::LIME_GREEN, rvt::SMALL);

  visual_tools.loadRemoteControl();

  Eigen::Isometry3d text_pose = Eigen::Isometry3d::Identity();
  text_pose.translation().z() = 1.0;
  visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);

  visual_tools.trigger();

   ROS_INFO("tutorial", "Planning frame: %s", move_group.getPlanningFrame().c_str());

  ROS_INFO("tutorial", "End effector link: %s", move_group.getEndEffectorLink().c_str());

  ROS_INFO("tutorial", "Available Planning Groups:");
  std::copy(move_group.getJointModelGroupNames().begin(), move_group.getJointModelGroupNames().end(),
            std::ostream_iterator<std::string>(std::cout, ", "));



  move_group.setPoseTargets(workspace_trajectory.getWaypoints());

  // Now, we call the planner to compute the plan and visualize it.
  // Note that we are just planning, not asking move_group
  // to actually move the robot.
  // Cartesian Paths
  // ^^^^^^^^^^^^^^^
  // You can plan a Cartesian path directly by specifying a list of waypoints
  // for the end-effector to go through. Note that we are starting
  // from the new start state above.  The initial pose (start state) does not
  // need to be added to the waypoint list but adding it can help with visualizations
  std::vector<geometry_msgs::Pose> waypoints;
  waypoints=workspace_trajectory.getWaypoints();


  // We want the Cartesian path to be interpolated at a resolution of 1 cm
  // which is why we will specify 0.01 as the max step in Cartesian
  // translation.  We will specify the jump threshold as 0.0, effectively disabling it.
  // Warning - disabling the jump threshold while operating real hardware can cause
  // large unpredictable motions of redundant joints and could be a safety issue
  moveit_msgs::RobotTrajectory trajectory;
  const double jump_threshold = 0.0;
  const double eef_step = 0.01;
  double fraction = move_group.computeCartesianPath(waypoints, eef_step, jump_threshold, trajectory);
  ROS_INFO_NAMED("tutorial", "Visualizing plan 4 (Cartesian path) (%.2f%% acheived)", fraction * 100.0);

  // Visualize the plan in RViz
  visual_tools.deleteAllMarkers();
  visual_tools.publishText(text_pose, "Cartesian Path", rvt::WHITE, rvt::XLARGE);
  visual_tools.publishPath(waypoints, rvt::LIME_GREEN, rvt::SMALL);
  for (std::size_t i = 0; i < waypoints.size(); ++i)
    visual_tools.publishAxisLabeled(waypoints[i], "pt" + std::to_string(i), rvt::SMALL);
  visual_tools.trigger();

  // You can execute a trajectory like this.
  move_group.execute(trajectory);

  //publish the trajectory in order to be plotted in rqt plot or rqt multiplot
  ros::Publisher publisher = node_handle.advertise<trajectory_msgs::JointTrajectory>("trajectory_points",1000);
  trajectory_msgs::JointTrajectory joint_trajectory;


  publisher.publish(trajectory.joint_trajectory);

  ros::spin();
}