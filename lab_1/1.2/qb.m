syms t;
T = 1;
t1 = 0;
t2 = T;
N = 10;
xt = cos(6*pi*t) + 2*cos(2*pi*t);

F = fourierCoeff(t,xt,T,t1,t2,N);

FS_idx = -N:N;
figure; stem(FS_idx,F);
grid on;
