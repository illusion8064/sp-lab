syms t;

T = 1;
N = 10;

xt = cos(6 *pi*t) + 2*cos(2*pi*t);
t1 = -T/2;
t2 = T/2;

time_grid = -0.5:0.01:0.5;

A = fourierCoeff(t,xt,T,t1,t2,N);

y = partialfouriersum(A,T,time_grid);

% x = cos(2*pi*time_grid/T);
figure;
plot(time_grid, y);
xlabel('time');
ylabel('amplitude');
grid on;

