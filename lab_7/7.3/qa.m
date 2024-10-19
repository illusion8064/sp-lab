f0 = 10;
Fs = 5000;
T = 1;
B = 4;
a = 1;

Ts = 1/Fs;
t = 0:Ts:T;

x = sin(2*pi*f0*t);
xq = quadratic_quant(x, B, a);
qe = x-xq;
disp('quantization error: ');
disp(qe);

figure;
subplot(3,1,1);
plot(t, x);
title('input signal x[n]');
xlabel('time');
ylabel('amplitude');

subplot(3,1,2);
plot(t, xq);
title('quantized signal xq[n]');
xlabel('time');
ylabel('amplitude');

subplot(3,1,3);
plot(t, qe, 'k', 'LineWidth', 1.5);
title('quantization error e_q[n]');
xlabel('time');
ylabel('error');
ylim([-0.5, 0.5]);

figure;
histogram(qe,15);
title('histogram of the quantization error for B=4');
xlabel('quantization error');
ylabel('frequency');