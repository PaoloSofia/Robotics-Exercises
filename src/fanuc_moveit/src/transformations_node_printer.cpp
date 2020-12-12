#include <iostream>
#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Transform.h>
#include <geometry_msgs/Quaternion.h>
#include <std_msgs/Float64MultiArray.h>
#include <fanuc_moveit/AxisAngle.h>
#include <fanuc_moveit/TransformationMatrix.h>
#include <fanuc_moveit/Transformations.h>
#include <fanuc_moveit/TransformationsArray.h>
#include <std_msgs/Float64.h>
#include <tf2/LinearMath/Matrix3x3.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Transform.h>
#include <tf2/LinearMath/Vector3.h>




void printTransformCallback(const fanuc_moveit::TransformationsArray& msg){
    
    for(int i = 0; i < end(msg.transformations)-begin(msg.transformations); i++){
        
        //std::string frame_name = "Transformation from " + std::string(msg.transformations[i].parent_frame.c_str()) +  " to " + std::string(msg.transformations[i].child_frame.c_str());
        ROS_INFO("Transformation from %s to %s", msg.transformations[i].parent_frame.c_str(),msg.transformations[i].child_frame.c_str());
        
        printf("Translaction vecotr:\n[%f\\t%f\t%f]\n",msg.transformations[i].translation.x,
        msg.transformations[i].translation.y,
        msg.transformations[i].translation.z
        );
        
        printf("Homogeneus transformation matrix\n");

        double translation[3] = {msg.transformations[i].tf_matrix.translation.x,
        msg.transformations[i].tf_matrix.translation.y,
        msg.transformations[i].tf_matrix.translation.z};
        
        for(int j = 0; j < 4; j++){
            //prints last row
            if(j == 3){
                printf("0.000000\t0.000000\t0.000000\t1.000000\n");
                break;
            }
            for(int k = 0; k < 4; k++){
                if(k % 3 == 0 && k != 0){ 
                    
                    printf("%f\n",translation[j]);
                }else{
                    printf("%f\t", msg.transformations[i].tf_matrix.rotation[3*j + k ]);
                }
            }
        }
        
        printf("RPY\n[");
        printf("%f\t" ,msg.transformations[i].rpy.x);
        printf("%f\t",msg.transformations[i].rpy.y); 
        printf("%f]\n",msg.transformations[i].rpy.z);
        
        printf("Angle-Axis\n");
        printf("Axis\n[%f\t%f\t%f]\n",
                                    msg.transformations[i].axis_angle.axis.x,
                                    msg.transformations[i].axis_angle.axis.y, 
                                    msg.transformations[i].axis_angle.axis.z);          
        printf("Angle\n%f°\n",msg.transformations[i].axis_angle.angle*180/3.141593);
        printf("--------------------------------------------------------------------------------------------\n");
        
    }
        

}

int main(int argc, char** argv){
    ros::init(argc, argv, "transformations_node_printer");

    ros::NodeHandle n;

    ros::Subscriber subscriber = n.subscribe("transformations_node_publisher",1000,printTransformCallback);

    ros::spin();
    return 0;
}