
f0 = 12; % frequency of the signal in Hz
fs = 64; % sampling frequency in Hz
L = 16; % length of the signal
n = 0:L-1; % time index
p = cos(2*pi*f0*n/fs); % original signal
w = ones(1, L); % rectangular window
x = p .* w; % windowed signal

% DFT lengths
m_values = [1, 2, 4, 8];
figure;

for i = 1:length(m_values)
    N = m_values(i) * L;
    X = fft(x, N);
    
    % Plotting
    subplot(2, 2, i);
    if m_values(i) <= 2
        stem(0:N-1, abs(X));
    else
        plot(0:N-1, abs(X));
    end

    title(['DFT Magnitude for M = ', num2str(m_values(i))]);
    xlabel('k');
    ylabel('|X[k]|');
end

   
