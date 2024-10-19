L_values = [16,32,64,128];
m=8;
figure;
for i=1:length(L_values)
    L=L_values(i);
    n = 0:L-1; % time index
    p = cos(2*pi*f0*n/fs); % original signal
    w = ones(1, L); % rectangular window
    x = p .* w; % windowed signal
    N=m*L;
    X=fft(x,N);

    subplot(2,2,i);
    plot(0:N-1,abs(X));
    title(['DFT for L=',num2str(L)]);
    xlabel('k');
    ylabel('|X[k]|');
end