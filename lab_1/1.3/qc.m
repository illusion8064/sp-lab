syms t;

T = 1;
T1 = T/4;
N1 = 1;
N2 = 100;
N3 = 50;

xt = piecewise((t>=-T1) & (t<=T1), 1, (abs(t)>T1) & (abs(t)<T/2), 0);
t1 = -T1;
t2 = T1;

time_grid = -0.5:0.01:0.5;

A1 = fourierCoeff(t,xt,T,t1,t2,N1);
y1 = partialfouriersum(A1,T,time_grid);

A2 = fourierCoeff(t,xt,T,t1,t2,N2);
y2 = partialfouriersum(A2,T,time_grid);

A3 = fourierCoeff(t,xt,T,t1,t2,N3);
y3 = partialfouriersum(A3,T,time_grid);

signal = double(subs(xt, t, time_grid));
figure;

subplot(3, 1, 1);
plot(time_grid, y1, 'b', 'DisplayName', 'y1');
hold on;
plot(time_grid, signal, 'r', 'DisplayName', 'original signal')
hold off;
grid on;
xlabel('time');
ylabel('amplitude');
legend show;

subplot(3, 1, 2);
plot(time_grid, y2, 'g', 'DisplayName', 'y2');
hold on;
plot(time_grid, signal, 'r', 'DisplayName', 'original signal')
hold off;
grid on;
xlabel('time');
ylabel('amplitude');
legend show;

subplot(3, 1, 3);
plot(time_grid, y3, 'b', 'DisplayName', 'y3');
hold on;
plot(time_grid, signal, 'g', 'DisplayName', 'original signal')
hold off;
grid on;
xlabel('time');
ylabel('amplitude');
legend show;

err1 = max(abs(y1 - signal));
err2 = max(abs(y2 - signal));
err3 = max(abs(y3 - signal));

disp(['max absolute error 1:' num2str(err1)]);
disp(['max absolute error 2:' num2str(err2)]);
disp(['max absolute error 3:' num2str(err3)]);

