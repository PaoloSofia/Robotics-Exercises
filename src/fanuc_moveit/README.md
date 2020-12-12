Fanuc Moveit

This package contains the moveit configuration, the robot description and a node that computes the transofrmation of the fanuc robot. 

## FANUC DESCRIPTION
The files containing the fanuc description are inside the `robot`,`meshes` and `doc` folders. 
The Denavit-Hartenberg parameters used are descripted in the file `fanuc_dh.pdf` file inside the doc folder. They are based off of the fanuc datasheet.
The model of the fanuc is the M-20ia/20m.

## FANUC MOVEIT
This package contains the moveit configuration of the robot. Is it possible to create a new configuration by running the moveit assistant.
The kinematics solver set is the kdl

## FANUC TRANSFORMATION
This functionality is made up by a publisher and a subscriber. The publisher computes the trasformation of the end effctor for all the reference frames of all joints. It does it every 10 seconds. The transformations are then used to compute the following representation:
- Axis-Angle
- Rotation Matrix
- Transactional vector
- Roll-Pitch-Yaw angles

For each of these representation a msg has been defined, in order to be published.

The subscriber is just a node that prints these trasformations to the console.

# RUN THE CODE
It's possible to run all of these functionality by executing

```cmake
roslaunch fanuc_moveit demo.launch
``` 
This launch file starts the transformation node publisher and subscriber, visualize the robot in Rviz and with the Robot state publisher gui, the user is able to change the position of the robot and check the transformation on the standard output