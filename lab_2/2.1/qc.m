load('q1.mat')

m = -5:5;
N = 100;
L = length(x);

y = zeros(1,L);

for n = 1:L
    a = 0;
    for k = n-N+1:n
        if k > 0
            a = a + x(k);
        end
    end
    y(n) = a / N;
end
figure;
subplot(2,1,1);
stem(x);
xlabel('n');
ylabel('x[n]');
title('input signal')

subplot(2,1,2);
stem(y);
xlabel('n');
ylabel('y[n]');
title('moving average system for N=100')

grid on;