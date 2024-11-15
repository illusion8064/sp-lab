N=5;
f0=50;
figure;
subplot(5,1,1);
plot(0:300,x1(1:301));
xlabel('n');
ylabel('x[n]');
title('A=1/k');

subplot(5,1,2);
plot(0:300,x2(1:301));
xlabel('n');
ylabel('x[n]');
title('A=exp(-k)')

A3 = zeros(N);
for k = 1:N
    A3(k) = 1 + sin(pi*k/N);
end
x3 = harmonics(A3,f0,P,td,fs);
subplot(5,1,3);
plot(0:300,x3(1:301));
xlabel('n');
ylabel('x[n]');
title('A=1+sin(pi*k/N)')

A4 = zeros(N);
for k = 1:N
    A4(k) = log(k);
end
x4 = harmonics(A4,f0,P,td,fs);
subplot(5,1,4);
plot(0:300,x4(1:301));
xlabel('n');
ylabel('x[n]');
title('A=log(k)')

A5 = zeros(N);
for k = 1:N
    A5(k) = k;
end
x5 = harmonics(A5,f0,P,td,fs);
subplot(5,1,5);
plot(0:300,x5(1:301));
xlabel('n');
ylabel('x[n]');
title('A=k')
