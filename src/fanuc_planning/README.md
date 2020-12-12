Fanuc Planning

This package contains a node that computes the trajectory planning of the fanuc robot this demo is a circular one. Is it possible to change it by changing the trajectory file provided in the data folder. 
Inside the data folder there are 2 matlab script file that can be used to generate a trajectory and export it to a .traj file.
The node loads the trajectory and computes the planning.

The trajectories are published in order to be checked in rqt_plot or rqt_multiplot.



How to run the planner


```cmake
roslaunch fanuc_moveit demo.launch
```
Run the planner with


```cmake
roslaunch fanuc_planning trajectory_planner.launch
```

This launch file launch an instance of rqt_plot