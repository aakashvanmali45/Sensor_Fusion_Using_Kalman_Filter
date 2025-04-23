lidar_noise = 0.05 * randn(size(true_distance));

spikes = rand(size(true_distance)) < 0.05;
lidar_spikes = 2 .* spikes .* (rand(size(true_distance)) - 0.5);

lidar_reading = true_distance + lidar_noise + lidar_spikes;

figure;
plot(t, true_distance, 'g', t, lidar_reading, 'r--', 'LineWidth', 1.5);
legend('True Distance', 'LiDAR Reading');
title('LiDAR Sensor Simulation with Spikes');
xlabel('Time (s)');
ylabel('Distance (m)');
grid on;
