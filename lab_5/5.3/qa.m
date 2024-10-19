 L = 4;
 N_val = [4,16,64];

 for i = 1:length(N_val)
    N = N_val(i);
    x = [ones(L,1);zeros(N,1)];

    X = fft(x,N);

    figure;
    subplot(3,1,1);
    stem(x);
    title(['input signal x[n] for N = ',num2str(N)]);
    xlabel('n');
    ylabel('x[n]');
    grid on;

    subplot(3,1,2);
    plot(abs(X));
    title('magnitude of the DFT of input signal');
    xlabel('k');
    ylabel('|X[k]|');
    grid on;

    subplot(3,1,3);
    plot(angle(X));
    title('phase spectrum of the DFT of input signal');
    xlabel('k');
    ylabel('phase of X[k]');
    grid on;

 end
