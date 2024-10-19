n1 = 10;
mu = 0;
sigma = 1;

x1 = mu + sigma * randn(1, n1);

n2 = 10;
x2 = zeros(1,n2);
x2(3:9) = 1;

l_c = conv(x1,x2,"full");
c_c = cconv(x1,x2,n1);

figure;

subplot(2,2,1);
stem(x1);
title('original signal x1[n]');
xlabel('n');
ylabel('x1[n]');

subplot(2,2,2);
stem(x2);
title('original signal x2[n]');
xlabel('n');
ylabel('x2[n]');

subplot(2,2,3);
stem(l_c);
title('linear convolution');
xlabel('n');
ylabel('x1[n]*x2[n]');

subplot(2,2,4);
stem(c_c);
title('circular convolution');
xlabel('n');
ylabel('x1[n]*x2[n]');
