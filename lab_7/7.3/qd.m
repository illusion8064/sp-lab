figure;
histogram(qe,15);
title('histogram of the quantization error for B=4');
xlabel('quantization error');
ylabel('frequency');

f0 = 10;
Fs = 5000;
T = 1;
B = 3;
a = 1;

Ts = 1/Fs;
t = 0:Ts:T;

x = sin(2*pi*f0*t);
xq = quadratic_quant(x, B, a);
qe = x-xq;

figure;
histogram(qe,15);
title('histogram of the quantization error for B=3');
xlabel('quantization error');
ylabel('frequency');