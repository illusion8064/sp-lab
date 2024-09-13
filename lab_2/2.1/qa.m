% we have implemented the moving average function for the unit step as an
% input so this is parts a and b combined.

m = -5:5;
x_n = ones(size(m));
N = 100;
L = length(x_n);

y = zeros(1,L);

for n = 1:L
    a = 0;
    for k = n-N+1:n
        if k > 0
            a = a + x_n(k);
        end
    end
    y(n) = a / N;
end
figure;

stem(y);
xlabel('n');
ylabel('y[n]');

grid on;