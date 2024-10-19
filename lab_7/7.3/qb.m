figure;
subplot(3,1,1);
plot(t, x);
title('input signal x[n]');
xlabel('time');
ylabel('amplitude');

subplot(3,1,2);
plot(t, xq);
title('quantized signal xq[n]');
xlabel('time');
ylabel('amplitude');