N = 20;

n = 0:N-1;

x = (-0.8).^n;

X = fft(x,N);

    figure;
    subplot(3,1,1);
    stem(x);
    title('input signal x[n]');
    xlabel('n');
    ylabel('x[n]');
    grid on;

    subplot(3,1,2);
    stem(abs(X));
    title('magnitude of the DFT of input signal');
    xlabel('k');
    ylabel('|X[k]|');
    grid on;

    subplot(3,1,3);
    stem(angle(X));
    title('phase spectrum of the DFT of input signal');
    xlabel('k');
    ylabel('phase of X[k]');
    grid on;