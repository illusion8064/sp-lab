
figure(1);
subplot(2,2,1);
plot(n, x, '-y'); grid('on');
hold on
plot(n, s, '-r');
xlabel('Time Index [n]');
ylabel('Amplitude');
title('Sine Wave and its Noisy Version');
legend('x[n]', 's[n]');

filtered_signal = digital_differentiator(x);

subplot(2,2,2);
plot(s); grid('on');
hold on
plot(filtered_signal);
xlim([0,1010]);
xlabel('Time Index [n]');
ylabel('Amplitude');
title('Original Signal and its filtered version');
legend('s[n]', 'y[n]');

w = -10:0.01:10;
N0 = 1;
x_dtft = DT_Fourier(x, N0, w);
filtered_dtft = DT_Fourier(filtered_signal, N0, w);

subplot(2,2,3);
plot(w, abs(x_dtft)); grid('on');
xlabel('Time Index [n]');
ylabel('Magnitude');
title('DTFT of Noisy Signal x[n]');

subplot(2,2,4);
plot(w, abs(filtered_dtft)); grid('on');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
title('DTFT of Filtered Signal');