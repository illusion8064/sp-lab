% this is the combined code for k,l,m 
% we had to run them together as per question requirements. 
% we have uploaded the separate ones for k and m to provide more clarity.

n1 = 10;
mu = 0;
sigma = 1;

x1 = mu + sigma * randn(1, n1);

n2 = 10;
x2 = zeros(1,n2);
x2(3:9) = 1;

%using inbuilt functions
l_c = conv(x1,x2,"full");
c_c = cconv(x1,x2,n1);


%using DFT method
length_lc = n1+n2-1;
%linear
X1_l = fft([x1,zeros(1,length_lc - n1)]);
X2_l = fft([x2,zeros(1,length_lc - n2)]);
X3_l = (X1_l).*(X2_l);
x3_l = ifft(X3_l, length_lc);

%circular
X1_c = fft(x1, n1);
X2_c = fft(x2, n2);
X3_c = (X1_c).*(X2_c);
x3_c = ifft(X3_c, n1);

figure;
subplot(2,2,1);
stem(l_c);
title('linear convolution of x1[n] and x2[n]');
xlabel('n');
ylabel('x1[n]*x2[n]');
subplot(2,2,2);
stem(x3_l);
title('linear convolution of using DFT');
xlabel('n');
ylabel('x1[n]*x2[n]');


subplot(2,2,3);
stem(c_c);
title('circular convolution of x1[n] and x2[n]');
xlabel('n');
ylabel('x1[n]*x2[n]');
subplot(2,2,4);
stem(x3_c);
title('circular convolution using DFT');
xlabel('n');
ylabel('x1[n] \circ x2[n]');