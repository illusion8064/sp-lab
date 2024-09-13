syms t;
T = 1;
T1 = T/4;
t1 = -T1;
t2 = T1;
N = 10;

xt = piecewise(t>=-T1 & t<=T1, 1, abs(t)>T1 & abs(t)<T/2, 0);

F = fourierCoeff(t,xt,T,t1,t2,N);

FS_idx = -N:N;
figure; 
stem(FS_idx,F);
xlabel('index');
ylabel('coefficients');
grid on;