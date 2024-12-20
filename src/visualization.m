function visualization(sensor_data, results)
    time = sensor_data.time;

    % Plot wheel speeds
    figure;
    plot(time, sensor_data.wheel_speeds, 'LineWidth', 1.5);
    title('Wheel Speeds Over Time');
    xlabel('Time (s)');
    ylabel('Speed (m/s)');
    grid on;

    % Plot deceleration
    figure;
    plot(time, results.deceleration, 'r', 'LineWidth', 1.5);
    title('Deceleration Over Time');
    xlabel('Time (s)');
    ylabel('Deceleration (m/s^2)');
    grid on;

    % Display results
    fprintf('Time to Standstill: %.2f seconds\n', results.time_to_stop);
    fprintf('Total Braking Time: %.2f seconds\n', results.total_braking_time);
end