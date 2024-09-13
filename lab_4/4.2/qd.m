
% Define the filter orders M
M_values = [5, 21, 51]; % Different M values

% Create impulse responses for all M values without loops
h1 = ones(1, M_values(1)) / M_values(1); % Impulse response for M = 5
h2 = ones(1, M_values(2)) / M_values(2); % Impulse response for M = 21
h3 = ones(1, M_values(3)) / M_values(3); % Impulse response for M = 51

% Apply the moving average filter using convolution for each M value
y1 = conv(x, h1, 'full'); % Filtered signal for M = 5
y2 = conv(x, h2, 'full'); % Filtered signal for M = 21
y3 = conv(x, h3, 'full'); % Filtered signal for M = 51

% Plot the input signal and filtered outputs
figure;

% Panel 1: Original and noisy signal
subplot(2, 2, 1);
plot(n, s, 'b', n, x, 'r');
title('Original Signal s[n] and Noisy Signal x[n]');
legend('s[n]', 'x[n]');
xlabel('n');
ylabel('Amplitude');

% Panel 2: Filtered output for M = 5
subplot(2, 2, 2);
plot(n, s, 'r'); hold on;
plot(0:length(y1)-1, y1, 'b');
title('Filtered Signal y[n] (M = 5)');
legend('s[n]', 'y[n]');
xlabel('n');
ylabel('Amplitude');

% Panel 3: Filtered output for M = 21
subplot(2, 2, 3);
plot(n, s, 'r'); hold on;
plot(0:length(y2)-1, y2, 'b');
title('Filtered Signal y[n] (M = 21)');
legend('s[n]', 'y[n]');
xlabel('n');
ylabel('Amplitude');

% Panel 4: Filtered output for M = 51
subplot(2, 2, 4);
plot(n, s, 'r'); hold on;
plot(0:length(y3)-1, y3, 'b');
title('Filtered Signal y[n] (M = 51)');
legend('s[n]', 'y[n]');
xlabel('n');
ylabel('Amplitude');
