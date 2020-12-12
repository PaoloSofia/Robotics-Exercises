#include <ros/ros.h>
#include <stdlib.h>
#include <functional>

#include <actionlib/server/simple_action_server.h>
// MoveIt
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <fanuc_kinematics/IKAction.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseArray.h>
#include <moveit/kinematics_base/kinematics_base.h>

#include <tf2_kdl/tf2_kdl.h>
#include <tf2/transform_datatypes.h>

#include <angles/angles.h>
#include <moveit/robot_state/conversions.h>


class IKAction
{
protected:

  ros::NodeHandle nh_;
  actionlib::SimpleActionServer<fanuc_kinematics::IKAction> as_; // NodeHandle instance must be created before this line. Otherwise strange error occurs.
  std::string action_name_;
  // create messages that are used to published feedback/result
  fanuc_kinematics::IKFeedback feedback_;
  fanuc_kinematics::IKResult result_;
  

public:

  IKAction(std::string name) :
    as_(nh_, name, boost::bind(&IKAction::executeCB, this, _1), false),
    action_name_(name)
  {
    as_.start();
  }

  ~IKAction(void)
  {
  }

  void executeCB(const fanuc_kinematics::IKGoalConstPtr &goal)
  {
    // helper variables
    ros::Rate r(1);
    bool success = false;
    std::srand(time(0));
    std::vector<double> seed;
    seed.push_back(std::rand());

    std::vector<double> solution;
    bool found = false;
    std::vector<std::vector<double>> solutions_found;


    //initialize kinematics
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    const moveit::core::RobotModelPtr& kinematic_model = robot_model_loader.getModel();
    std::string group_name = "fanuc";
    std::string base_frame = "base_link";
    moveit_msgs::MoveItErrorCodes error_code;

    const robot_state::JointModelGroup *model_group = kinematic_model->getJointModelGroup(group_name);

    const kinematics::KinematicsBaseConstPtr kin = model_group->getSolverInstance();

    int n_attempts = 1000;

    for(int i = 0; i <= n_attempts; i++)
    {
      
      // check that preempt has not been requested by the client
      if (as_.isPreemptRequested() || !ros::ok())
      {
        ROS_INFO("%s: Preempted", action_name_.c_str());
        // set the action state to preempted
        as_.setPreempted();
        success = false;
        break;
      }


      //get a new random seed
      seed[0] = rand();
          
      found = kin->getPositionIK(goal->pose,seed,solution,error_code);
      
      if(found)
      {

        if (check_solution(solution,solutions_found))
        {
          ROS_INFO("new solution found");
          solutions_found.push_back(solution);

          moveit::core::RobotState robot_state(kinematic_model);
          robot_state.setVariablePositions(solution);
          moveit::core::robotStateToRobotStateMsg(robot_state, feedback_.solution);

          // publish the feedback
          as_.publishFeedback(feedback_);

          result_.solutions.push_back(feedback_.solution);
        }
      
      }     

    }

    std::ostringstream ss;
    ss << "Found " << solutions_found.size() << " IK solutions";
    solutions_found.resize(0);
    as_.setSucceeded(result_,ss.str());
  }

//this function checks if the solution found by the kinematic_solver is a new one
  bool check_solution(std::vector<double> solution,std::vector<std::vector<double>> solutions){
    double difference;
    double threshold = 0.001;
    bool new_solution = true;

    for(int i = 0; i < solutions.size();i++){
    
        for(int j = 0; j < solution.size();j++){
          solution[j] = angles::normalize_angle(solution[j]);
          difference = angles::shortest_angular_distance(solutions[i][j], solution[j]);

          if (difference > threshold){
            new_solution &= false;
          }else{
            new_solution &= false;
          }
        }

    }
    return new_solution;
  }
};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "ik_server");

  IKAction ik("ik_server");
  ros::spin();


  return 0;
}