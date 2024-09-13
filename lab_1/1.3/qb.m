syms t;

T = 1;
N = 10;

xt = cos(6*pi*t) + 2*cos(2*pi*t);
t1 = -T/2;
t2 = T/2;

time_grid_new = -0.5:0.05:0.5;
time_grid = -0.5:0.01:0.5;

A = fourierCoeff(t,xt,T,t1,t2,N);

y = partialfouriersum(A,T,time_grid_new);
signal = cos(6*pi*time_grid) + 2*cos(2*pi*time_grid);

% interpolating signal y to match time_grid
y_interp = interp1(time_grid_new, y, time_grid, 'linear');

figure;
plot(time_grid, signal, 'r');
hold on;
plot(time_grid, y_interp, 'b--');

xlabel('time');
ylabel('amplitude');

max_abs_error = max(abs(signal - y_interp));
disp(['max absolute error:' num2str(max_abs_error)]);
grid on;