#include <iostream>
#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <fanuc_moveit/AxisAngle.h>
#include <fanuc_moveit/TransformationMatrix.h>
#include <fanuc_moveit/Transformations.h>
#include <fanuc_moveit/TransformationsArray.h>
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
#include <tf2/buffer_core.h>


int main(int argc, char** argv){
  ros::init(argc, argv, "transformations_node_publisher");
  ros::NodeHandle node;

  ros::Publisher pub = node.advertise<fanuc_moveit::TransformationsArray>("transformations_node_publisher", 10);
  
  std::string frames[8] = {"base_link","link_1","link_2","link_3","link_4","link_5","link_6","flange"};


  tf2_ros::Buffer tfBuffer;
  tf2_ros::TransformListener tfListener(tfBuffer);
  ros::Rate rate(10.0);

  geometry_msgs::TransformStamped transformStamped;
  //variable definitions for the trasnformations



  while (node.ok()){

    //transformation matrix
    fanuc_moveit::TransformationMatrix tf_mat;
    
    geometry_msgs::Vector3 mat_trans;
    std_msgs::MultiArrayLayout layout;
    std_msgs::Float32MultiArray mat_rot;
    std_msgs::MultiArrayDimension dim;
    
    tf2::Matrix3x3 rotation_mat;
    //axis angle
    fanuc_moveit::AxisAngle ax_ang;
    geometry_msgs::Vector3 axis;
    float angle;
    //roll pitch yaw
    geometry_msgs::Vector3 rpy;
    //transformation and array declaration
    fanuc_moveit::TransformationsArray tf_array;
    fanuc_moveit::Transformations transformation;


    try{ 
      for(int i = 0; i <  sizeof(frames)/sizeof(frames[0]) -1; i++){
        transformStamped = tfBuffer.lookupTransform(frames[7], frames[i],ros::Time(0));
        tf2::Quaternion quat = tf2::Quaternion(transformStamped.transform.rotation.x,transformStamped.transform.rotation.y,transformStamped.transform.rotation.z,transformStamped.transform.rotation.w);
        tf2::Transform transform = tf2::Transform(quat);
        printf("%f\t%f\t%f\t%f\n\n\n\n\n",transformStamped.transform.rotation.x,transformStamped.transform.rotation.y,transformStamped.transform.rotation.z,transformStamped.transform.rotation.w);
        
        //store parent and child frames
        transformation.parent_frame.assign(frames[i].c_str());
        
        transformation.child_frame.assign(frames[7].c_str());

        //compute translaction vector
        transformation.translation = transformStamped.transform.translation;

        // compute homogeneus transformation matrix 
        rotation_mat = tf2::Matrix3x3(quat);
        std::vector<float> mat_data;
        tf2::Vector3 row;

        for(int j = 0; j < 3; j++){
          row = rotation_mat.getRow(j);
            for(int k = 0; k < 3; k++){
            mat_data.push_back(row[k]);
          }
        }

        tf_mat.translation = mat_trans;
        tf_mat.rotation = mat_data;


        // compute rpy
        double roll,pitch,yaw;

        rotation_mat.getRPY(roll,pitch,yaw);
   
        rpy.x = roll;
        rpy.y = pitch;
        rpy.z = yaw;
        transformation.rpy = rpy;


        //compute axis angle
        tf2::Vector3 vec = quat.getAxis();
        axis.x = vec[0];
        axis.y = vec[1];
        axis.z = vec[2];

        ax_ang.axis = axis;
        ax_ang.angle = quat.getAngle();

        transformation.axis_angle = ax_ang;
        transformation.tf_matrix = tf_mat;
        
        tf_array.transformations.push_back(transformation);

      }
    pub.publish(tf_array);
      
    }
    catch (tf2::ExtrapolationException &eex) {
      ROS_ERROR("%s. The requested value would have required extrapolation beyond current limits",eex.what());
      ros::Duration(1.0).sleep();
      continue;
    }
    catch (tf2::InvalidArgumentException &iaex){
      ROS_WARN("%s. An argument is invalid. There might be an error with the transformation",iaex.what());
      ros::Duration(1.0).sleep();
      continue;
    }
    catch (tf2::ConnectivityException &cex){
      ROS_WARN("%s. Reference Frame tree is not connected between the frames requested. Exiting",cex.what());
      return -1;
    }
    catch(tf2::LookupException &lex){
      ROS_WARN("%s. A frame not in the graph has been attempted to be accessed. Check that all frames are being published and the tree is not broken",lex.what());
      ros::Duration(1.0).sleep();
      continue;
    }
    catch(std::exception &ex){
      ROS_WARN("%s.",ex.what());
      ros::Duration(1.0).sleep();
      continue;
    }


    rate.sleep();
    ros::Duration(1).sleep();
  }






  return 0;
};