t_fine=0:0.001:2;
xt=cos(5*pi*t_fine)+sin(10*pi*t_fine);
figure;
subplot(2,1,1);
plot(t_fine,xt);
grid on;
title('Continuous time signal')
xlabel('time');
ylabel('x(t)')

Ts=0.1;
t_samples=0:Ts:2;
xn=cos(5*pi*t_samples)+sin(10*pi*t_samples);
subplot(2,1,2);
stem(t_samples,xn);
grid on;
title('Discrete time signal')
xlabel('time');
ylabel('x[n]');
