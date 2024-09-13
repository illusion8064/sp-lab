% Define the moving average filter impulse response
M = 5; % Example for M = 5, you can change this value
h = ones(1, M) / M; % Impulse response of the moving average filter

% Apply the filter to a signal x using convolution
y = conv(x, h, 'full'); % Use 'full' to get the complete convolution
