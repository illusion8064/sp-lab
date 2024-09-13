% x[n] = y[n] + ay[n-1] + by[n-2]

N = 20;
n = 40;
x = zeros(N,1);
x(1) = 1;
b = 1;
a = [1,-0.5,-0.25];

y = filter(b,a,x);

h = impz(b,a,n);
stem(h);
xlabel('n')
ylabel('h[n]')
title('impulse response of a second order feedback system')
grid on;