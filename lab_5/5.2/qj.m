n1 = 10;
mu = 0;
sigma = 1;

x1 = mu + sigma * randn(1, n1);

n2 = 10;
x2 = zeros(1,n2);
x2(3:9) = 1;

figure;
subplot(2,1,1);
stem(x1);
title('input signal x1');
xlabel('n');
ylabel('x1[n]');

subplot(2,1,2);
stem(x2);
title('input signal x2');
xlabel('n');
ylabel('x2[n]');

