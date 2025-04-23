x_true = out.x_true.Data;
x_est = out.x_est.Data;

mae = mean(abs(x_true - x_est));

disp(mae);