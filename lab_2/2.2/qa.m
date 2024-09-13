M = input('');
n = 1:20;
x = zeros(1, length(n));   % sample signal
for k = 1:length(n)
    x(k) = k;
end
y = zeros(1, M*length(n));  % upsampled array will be M times the length 
                            % of the original signal array
for i = 1:length(y)
    if mod(i,M) == 0
        y(i-(M-1)) = x(i/M);
    else
        y(i) = 0;
    end
end
figure;
subplot(4,1,1)
stem(0:length(n)-1, x);
xlabel('index')
ylabel('x[n]')
title('input signal')
subplot(4,1,2)
stem(0:length(y)-1, y);
xlabel('index')
ylabel('upsampler')
title('upsampling')
% zero order hold 
z = zeros(1, length(y));
for j = 1:length(y)
    if y(j) > 0
        z(j) = y(j);
    elseif j > 1
        z(j) = z(j-1);
        
    end
end
subplot(4,1,3)
stem(0:length(y)-1, z);
xlabel('index')
ylabel('y[n]')
title('zero hold upsampling')
% linear interpolation
w = zeros(1, length(y));
for l = 1:length(y)
    if y(l) > 0
        w(l) = y(l);
    elseif l > 1
        w(l) = w(l-1) + (1/M);
    end
end
subplot(4,1,4)
stem(0:length(y)-1, w);
xlabel('index')
ylabel('y[n]')
title('linear interpolation upsampling')
grid on;
