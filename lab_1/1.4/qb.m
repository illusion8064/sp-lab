syms t;

T1 = 0.1;
T = 20;
N = 10*T;
t1 = -T1;
t2 = T1;

xt = piecewise(t>=-T1 & t<=T1, 1, abs(t)>T1 & abs(t)<T/2, 0);

F = fourierCoeff(t, xt, T, t1, t2, N);
F = F * T;

FS_idx = -N:N;
figure;
stem(FS_idx, F);
grid on;
xlabel('index');
ylabel('coeff value');
