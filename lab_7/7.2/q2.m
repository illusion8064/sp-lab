x = randn(30,1);

N_padded = 2^nextpow2(length(x));
x_padded = [x; zeros(N_padded - length(x), 1)];

X = radix2fft(x_padded);

X_fft = fft(x_padded);

figure;
subplot(2,1,1);
plot(real(X));
title('output using the function');
subplot(2,1,2);
plot(real(X_fft));
title('output using fft with numerical precison');
