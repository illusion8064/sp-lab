syms w n

n_val = -100:100;
w1 = pi/4;
w2 = pi;

X = piecewise((abs(w) >= w1) & (abs(w) <= w2), 1, 0);

x_val = zeros(size(n_val));

for i = 1:length(n_val)
    n_curr = n_val(i);
    x_val(i) = double((1/(2*pi)) * int(X*exp(1j*w*n_curr),w,-pi,pi));
end

figure;
subplot(2,1,1);
plot(n_val, real(x_val));
title('real parts of x[n]');
xlabel('n'); ylabel('real(x[n])');
grid on;
subplot(2,1,2);
plot(n_val, imag(x_val));
title('complex parts of x[n]');
xlabel('n'); ylabel('complex(x[n])');
sgtitle('Inverse DTFT for w1 = pi/4 and w2 = pi');
grid on;


% figure;
% plot(n_val, real(x_val));
% xlabel('n'); ylabel('real(x[n])');
% hold on;
% plot(n_val, imag(x_val));
% xlabel('n'); ylabel('complex(x[n])');
% sgtitle('Inverse DTFT for w1 and w2');
% grid on;

