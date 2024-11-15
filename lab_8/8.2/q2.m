t_fine=0:0.001:2;
xt=cos(5*pi*t_fine)+sin(10*pi*t_fine);
Ts=0.1;
t_samples=0:Ts:2;
xn=cos(5*pi*t_samples)+sin(10*pi*t_samples);
n_samples=0:length(xn)-1;
figure;
subplot(2,2,1);
plot(t_fine,xt);
grid on;
xlabel('time');
ylabel('amplitude');
title('original signal');

%a)zero order
x1 = interp1(t_samples,xn,t_fine,'previous');
subplot(2,2,2);
plot(x1);
grid on;
xlabel('time');
ylabel('amplitude');
title('reconstruction using zero order');

%b)linear interpolation
x2=interp1(t_samples,xn,t_fine,'linear');
subplot(2,2,3);
plot(x2);
grid on;
xlabel('time');
ylabel('amplitude');
title('reconstruction using linear interpolation');

%c)sinc
xr=sinc_recon(t_samples/Ts,xn,Ts,t_fine);
subplot(2,2,4);
plot(xr);
hold on;
grid on;
xlabel('time');
ylabel('amplitude');
title('reconstruction using sinc recon');

range_start = 0.25;
range_end = 1.75;

indices = find(t_fine >= range_start & t_fine <= range_end);

abs_error_x1 = abs(xt(indices) - x1(indices));
abs_error_x2 = abs(xt(indices) - x2(indices));
abs_error_xr = abs(xt(indices) - xr(indices));

% maximum and mean absolute errors for each signal
max_abs_error_x = max(abs_error_x1);
max_abs_error_x2 = max(abs_error_x2);
max_abs_error_xr = max(abs_error_xr);

mean_abs_error_x = mean(abs_error_x1);
mean_abs_error_x2 = mean(abs_error_x2);
mean_abs_error_xr = mean(abs_error_xr);

% result display
fprintf('Maximum Absolute Error for x1: %.4f\n', max_abs_error_x);
fprintf('Mean Absolute Error for x1: %.4f\n', mean_abs_error_x);

fprintf('Maximum Absolute Error for x2: %.4f\n', max_abs_error_x2);
fprintf('Mean Absolute Error for x2: %.4f\n', mean_abs_error_x2);

fprintf('Maximum Absolute Error for xr: %.4f\n', max_abs_error_xr);
fprintf('Mean Absolute Error for xr: %.4f\n', mean_abs_error_xr);
