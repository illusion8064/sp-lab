n = 0:1000; % Time index from 0 to 1000
omega0 = pi / 200; % Angular frequency
s = 5 * sin(omega0 * n); % Sine wave
v = randn(size(n)); % Gaussian noise
x = s + v; % Noisy signal

% Plot the original and noisy signals
figure;
%subplot(2, 2, 1);
plot(n, s, 'b', n, x, 'y');
title('Original Signal s[n] and Noisy Signal x[n]');
legend('s[n]', 'x[n]');
