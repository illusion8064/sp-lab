N = 20;
omega0 = 3*pi/10;
n = 0:N-1;
x = sin(omega0 * (n-1));
X = fft(x);
figure;

subplot(3, 1, 1);
stem(n, x);
title('Sequence: sin(ω0*(n-1))');
xlabel('n'); ylabel('x[n]');

subplot(3, 1, 2);
stem(abs(X));
title('Magnitude Spectrum');
xlabel('k'); ylabel('|X[k]|');

subplot(3, 1, 3);
stem(angle(X));
title('Phase Spectrum');
xlabel('k'); ylabel('Phase(X[k])');