f0 = 10;
Fs = 5000;
T = 1;
a = 1;
Ts = 1/Fs;
t = 0:Ts:T;
x = sin(2*pi*f0*t);

for B = 1:8
    xq = quadratic_quant(x,B,a);
    qe = x - xq;

    a = sum(abs(x).^2);
    b = sum(abs(qe).^2);

    sqnr(B) = a/b;
end

figure;
plot(1:8, sqnr);
title('Signal to Quantization Noise Ratio');
xlabel('B');
ylabel('SQNR');


