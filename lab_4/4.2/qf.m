w = -10:0.01:10;
N0 = 1;
x_dtft = DT_Fourier(x, N0, w);
y1_dtft = DT_Fourier(y1, N0, w);
y2_dtft = DT_Fourier(y2, N0, w);
y3_dtft = DT_Fourier(y3, N0, w);

figure(2);
subplot(2,2,1);
plot(w, abs(x_dtft)); grid('on');
xlabel('Time Index [n]');
ylabel('Magnitude');
title('DTFT of x[n]');

subplot(2,2,2);
plot(w, abs(y1_dtft)); grid('on');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
title('DTFT of filter output with M = 5');

subplot(2,2,3);
plot(w, abs(y2_dtft)); grid('on');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
title('DTFT of filter output with M = 21');

subplot(2,2,4);
plot(w, abs(y3_dtft)); grid('on');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
title('DTFT of filter output with M = 51');
sgtitle('DTFT plots for various values of M');
