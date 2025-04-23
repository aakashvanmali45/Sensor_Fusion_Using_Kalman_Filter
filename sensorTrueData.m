clc; clear;

dt = 0.1;
t = 0:dt:10;

true_distance = 5 - 0.3*t;
true_distance(true_distance < 0.5) = 0.5;

figure;
plot(t, true_distance, "g", "LineWidth",2);
xlabel('Time (s)');
ylabel('Distance (m)');
title('Ground Truth Distance');
legend('True Distance');
grid on;

true_data = [t' true_distance'];