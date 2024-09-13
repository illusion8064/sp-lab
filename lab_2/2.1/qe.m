load('q1.mat')

m = -5:5;
N = 10;
L = length(x);

h = ones(N, 1)/N;
y = conv(h, x);

y_conv = conv(h, x);
y_conv = y_conv(1:length(y));


figure;
subplot(2,1,1);
stem(x);
xlabel('n');
ylabel('x[n]');
title('moving average system')

subplot(2,1,2);
stem(y);
xlabel('n');
ylabel('y[n]');
title('convolution')

grid on;