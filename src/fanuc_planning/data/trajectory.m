clear all;
close all;
clc;

catkin_workspace_path = getenv('CATKIN_WORKSPACE');

filepath = strcat(catkin_workspace_path, '~/fanuc.traj');

no_of_cp = 10;
no_of_samples = 200;

rho = 0.2;
theta = linspace(-pi, pi, no_of_cp);

ctrl_points = NaN * ones(3, no_of_cp);
ctrl_points(1,:) = rho * cos(theta);
ctrl_points(2,:) = rho * sin(theta);clear all;
close all;
clc;

catkin_workspace_path = getenv('CATKIN_WORKSPACE');

filepath = strcat(catkin_workspace_path, '~/fanuc.traj');

no_of_cp = 10;
no_of_samples = 200;

rho = 0.2;
theta = linspace(-pi, pi, no_of_cp);

ctrl_points = NaN * ones(3, no_of_cp);
ctrl_points(1,:) =  0.5 * ones(1, no_of_cp);
ctrl_points(2,:) = rho * cos(theta);
ctrl_points(3,:) = rho * sin(theta);
[x_lambda, lambda] = generate_path(ctrl_points, no_of_samples, true);

x_lambda(4,:) = zeros(1, no_of_samples);
x_lambda(5,:) = pi/2 * ones(1, no_of_samples);
x_lambda(6,:) = zeros(1, no_of_samples);

filepath='/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_planning/fanuc.traj'
export_ros_workspace_path(filepath, lambda, x_lambda)
