f0 = 10;
Fs = 5000;
T = 1;
a = 1;
Ts = 1/Fs;
n = T * Fs;
t = linspace(0,T,n);
x = sin(2*pi*f0*t);

max_err = zeros(1,8);

for B = 1:8
    xq = quadratic_quant(x, B, a);
    q_err = x - xq;
    max_err(B) = max(abs(q_err));
end

figure;
plot(1:8, max_err, '-o');
xlabel('B');
ylabel('maximum quantization error');
title('maximum quantization error vs B');
grid on;