% input signal
x = ones(1,19);
k = 0;
x = [x, k]; 

y = zeros(1,20);
r = zeros(1,20);
figure;
subplot(3, 1, 1); 
stem(5*x, 'filled');
title('plot of x[n]');
xlabel('n')
ylabel('x[n]')

% output of the digital differentiator y[n]
for i = 1:length(y)
    if i-1<1
        y(i) = x(i);
    else
        y(i) = x(i) - x(i-1);
    end
end
subplot(3, 1, 2); 
stem(5*y, 'filled'); 
title('Plot of y[n]');
xlabel('n')
ylabel('y[n]')

% output of the inverse system r[n] (reconstruction of input x[n])
for j = 1:length(r)
    if j-1<1
        r(j) = y(j); % we've assumed r(0) = 0 for a relaxed system
    else
        r(j) = y(j) + r(j-1);
    end
end
subplot(3,1,3);
stem(r, 'filled');
title('Plot of r[n] (Reconstructed x[n])');
xlabel('n');
ylabel('r[n]');

