
n1 = -5:5;
n2 = -3:1;

%first input signal
xn = (-1).^n1;

%second input signal
pulse = zeros(1, length(n2));  
pulse(n2 >= -3 & n2 <= 1) = 1;

%output
out = conv(xn, pulse, "full");

figure;
xn_index = -5:5;
subplot(3,1,1);
stem(xn_index, xn);
title('original signal x[n]');
xlabel('n');
ylabel('x[n]');

pulse_index = -3:1;
subplot(3,1,2);
stem(pulse_index,pulse);
title('pulse signal');
xlabel('n');
ylabel('pulse[n]');

subplot(3,1,3);
stem(out);
title('convoluted signal');
xlabel('n');
ylabel('x[n]*pulse[n]');