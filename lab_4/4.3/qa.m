syms w

n = -100:100;
wc = pi/16;
X = piecewise(abs(w) <= wc, 1, abs(w) > wc, 0);

x_val = zeros(size(n));

for i = 1:length(n)
    n_curr = n(i);
    x_n = (1/(2*pi)) * int(X*exp(1j*w*n_curr),w,-pi,pi);
    x_val(i) = double(x_n);
end

figure;
subplot(2,1,1);
plot(n, real(x_val));
title('real parts');
xlabel('n');
ylabel('real(x[n])');
grid on;
subplot(2,1,2);
plot(n, imag(x_val));
title('complex parts');
xlabel('n');
ylabel('complex(x[n])');
grid on;
sgtitle('Inverse DTFT for wc = pi/16');
