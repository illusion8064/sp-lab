N = 105;  
n = 0:N-5; 
unit = unit_step(n)-unit_step(n-100);
x = sin((pi*n) / 25) .* unit;


% output signal (differentiated)
y = zeros(1, length(x));

for k = 2:length(x)
    y(k) = x(k)-x(k-1); 
end

% Plot the input signal and its derivative
figure;
subplot(2,1,1);
stem(n, x, 'filled');
title('Input Signal: x[n] = sin(pi/25)[u[n] − u[n−100])');
xlabel('Sample Index (n)');
ylabel('Amplitude');

subplot(2,1,2);
stem(n, y, 'filled');
title('Output Signal (Discrete-Time Derivative)');
xlabel('Sample Index (n)');
ylabel('Amplitude')