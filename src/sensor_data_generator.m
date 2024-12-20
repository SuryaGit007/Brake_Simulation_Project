function sensor_data = sensor_data_generator(constants)
    % Mock data generation
    time = 0:constants.time_step:constants.simulation_time; % Time vector

    % Generating random or sinusoidal data for sensors
    front_brake_pressure = 1000 + 200 * sin(2 * pi * 0.1 * time);
    rear_brake_pressure = 900 + 150 * sin(2 * pi * 0.1 * time);
    wheel_speeds = 20 - 0.5 * time; % Linear deceleration
    brake_pedal_switch = double(time > 1); % Activated after 1 second
    brake_pedal_percentage = 30 * brake_pedal_switch; % Fixed percentage when pressed

    % Structuring sensor data
    sensor_data.time = time;
    sensor_data.front_brake_pressure = front_brake_pressure;
    sensor_data.rear_brake_pressure = rear_brake_pressure;
    sensor_data.wheel_speeds = wheel_speeds;
    sensor_data.brake_pedal_switch = brake_pedal_switch;
    sensor_data.brake_pedal_percentage = brake_pedal_percentage;
end