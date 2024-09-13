% Define the impulse responses h1[n] and h2[n]
h1 = [1 -1 zeros(1,8)];  % h1[n] = delta[n] - delta[n-1]
h2 = ones(1,10);         % h2[n] = u[n] (unit step function)

% Perform the convolution of h1 and h2
convolution = conv(h1, h2);

% Plot the convolution result
figure;
stem(convolution, 'filled');
title('Convolution of h1[n] and h2[n]');
xlabel('n');
ylabel('Amplitude');


