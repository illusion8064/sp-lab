syms t;

T1 = 0.1;
T = 1;
N = 200;

xt = piecewise(t>=-T1 & t<=T1, 1, abs(t)>T1 & abs(t)<T/2, 0);
t1 = -T1;
t2 = T1;

time_grid = -0.5:0.01:0.5;

A = fourierCoeff(t,xt,T,t1,t2,N);

y = partialfouriersum(A,T,time_grid);

figure;
plot(time_grid, y);

grid on;
hold on;

signal = double(subs(xt, t, time_grid));
plot(time_grid, signal);
