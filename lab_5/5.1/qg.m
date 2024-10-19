L = 16; % length of the signal
n = 0:L-1; % time index
p = cos(2*pi*f0*n/fs); % original signal
w_hann = hann(L)';
x_hann = p .* w_hann; % windowed signal

for i = 1:length(m_values)
    N = m_values(i) * L;
    X_hann = fft(x_hann, N);
    
    % Plotting
    subplot(2, 2, i);
    if m_values(i) <= 2
        stem(0:N-1, abs(X_hann));
    else
        plot(0:N-1, abs(X_hann));
    end
    title(['DFT Magnitude for M = ', num2str(m_values(i))]);
    xlabel('k');
    ylabel('|X[k]|');
end
