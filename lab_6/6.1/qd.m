n1=0:20;
n2=-18:14;
f=0.05;
x1=sin(2*pi*f*n1);
x2=(-1).^n2;

conv_result=conv(x1,x2);
conv_n=(n1(1)+n2(1)):(n1(end)+n2(end));

figure;
subplot(3,1,1);
stem(n1, x1);
title('x1[n] = sin(2*pi*f*n)');
xlabel('n');
ylabel('x1[n]');
subplot(3,1,2);
stem(n2, x2);
title('x2[n] = (-1)^n');
xlabel('n');
ylabel('x2[n]');
subplot(3,1,3);
stem(conv_n,conv_result);
title('Convolution : x1[n]*x2[n]');
xlabel('n');
ylabel('convolution');