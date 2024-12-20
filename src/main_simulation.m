% main_simulation.m
clear; clc;

% Add utility folder to the path
addpath('utility');

% Load constants
constants = constants();

% Generate mock sensor data
sensor_data = sensor_data_generator(constants);

% Perform braking calculations
results = braking_calculations(sensor_data, constants);

% Visualize the results
visualization(sensor_data, results);

% Save data for future reference
save('data/generated_data.mat', 'sensor_data');
save('data/results.mat', 'results');

disp('Simulation complete. Data saved in "data" folder.');