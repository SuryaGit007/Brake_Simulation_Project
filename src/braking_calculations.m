function results = braking_calculations(sensor_data, constants)
    % Extract data
    time = sensor_data.time;
    wheel_speeds = sensor_data.wheel_speeds;

    % Calculate deceleration (differentiating speed)
    deceleration = -diff(wheel_speeds) / constants.time_step;
    deceleration = [deceleration, 0]; % Append 0 for final value

    % Time to standstill
    time_to_stop = find(wheel_speeds <= 0, 1) * constants.time_step;

    % Total braking time
    braking_indices = find(sensor_data.brake_pedal_switch == 1);
    if ~isempty(braking_indices)
        total_braking_time = (braking_indices(end) - braking_indices(1)) * constants.time_step;
    else
        total_braking_time = 0;
    end

    % Prepare results
    results.deceleration = deceleration;
    results.time_to_stop = time_to_stop;
    results.total_braking_time = total_braking_time;
end