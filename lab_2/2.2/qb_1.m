load('q2_1.mat');
N = numel(x);
M = input('');
y = zeros(1, M*N);
for i = 1:N*M
    flag = i/M;
    if floor(flag) == ceil(flag)
        y(i) = x(i/M);
    else
        y(i) = 0;
    end
end
figure;
subplot(4,1,1)
stem(1:N,x);
xlabel('index')
ylabel('x[n]')
title('input signal')
subplot(4,1,2)
stem(0:length(y)-1, y);
xlabel('index')
ylabel('y[n]')
title('upsampling')
re = zeros(1, M*N);
for j = 1:N*M
    re(j) = y(j);
    if y(j) == 0
        if j-1 > 0
            re(j) = y(j-1);
        end
    end
end
for k = 1:N*M
    if re(k) == 0
        if k-1 > 0
            re(k) = re(k-1);
        end
    end
end
index = 0:N*M-1;
subplot(4,1,3);
stem(index, re);
xlabel('index')
ylabel('y[n]')
title('zero hold upsampling')
new_index = 0:N*M-1;
interpolated_signal = interp1(find(y), y(y~=0), new_index, 'linear');
subplot(4,1,4);
stem(new_index, interpolated_signal);
xlabel('index')
ylabel('y[n]')
title('interpolated signal')