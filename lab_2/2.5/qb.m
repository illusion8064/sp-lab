% Correct impulse responses
h1 = [1 -1 zeros(1,8)];  % h1[n] = delta[n] - delta[n-1]
h2 = ones(1,10);         % h2[n] = u[n] (unit step function)

% Plot the impulse responses
figure;
stem(h1, 'filled');
hold on;
stem(h2, 'filled');
title('Impulse Responses h1[n] and h2[n]');
xlabel('n');
ylabel('Amplitude');
legend('h1[n]', 'h2[n]');
hold off;
