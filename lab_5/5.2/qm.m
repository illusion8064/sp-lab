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