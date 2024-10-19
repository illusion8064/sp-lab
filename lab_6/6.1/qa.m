x = rand(1, 10);

unit_pulse1 = ones(1, 10);  % From n = 0 to n = 9
unit_pulse2 = [zeros(1, 4), ones(1, 6)];  % From n = -4 to n = 5 (10 samples total)

conv1 = conv(x, unit_pulse1);  % Convolution with first pulse sequence
conv2 = conv(x, unit_pulse2);  % Convolution with second pulse sequence

% Plotting the results for i)
figure;
subplot(3,1,1);
stem(x);
title('Random Sequence');
subplot(3,1,2);
stem(unit_pulse1);
title('Unit Pulse 1 (n = 0 to 9)');
subplot(3,1,3);
stem(conv1);
title('Convolution of Random Sequence with Unit Pulse 1');

% Plotting the results for ii)
figure;
subplot(3,1,1);
stem(x);
title('Random Sequence');
subplot(3,1,2);
stem(unit_pulse2);
title('Unit Pulse 2 (n = -4 to 5)');
subplot(3,1,3);
stem(conv2);
title('Convolution of Random Sequence with Unit Pulse 2');
