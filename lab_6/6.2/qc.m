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
