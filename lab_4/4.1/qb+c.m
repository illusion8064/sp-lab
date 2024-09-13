w = -10:0.01:10;


% unit impulse
n1 = -20:20;
x1 = (n1 == 0);
N0_1 = find(n1 == 0);
X1 = DT_Fourier(x1,N0_1,w);
figure;
subplot(2,2,1);
plot(w, abs(X1));
title('magnitude of DTFT');
xlabel('\omega'); ylabel('|X(e^{j\omega})|');

subplot(2,2,2);
plot(w, angle(X1));
title('phase of DTFT');
xlabel('\omega'); ylabel('phase');

subplot(2,2,3);
plot(w, real(X1));
title('real parts of DTFT');
xlabel('\omega'); ylabel('real(X(e^{j\omega}))');

subplot(2,2,4);
plot(w, imag(X1));
title('imaginary parts of DTFT');
xlabel('\omega'); ylabel('imag(X(e^{j\omega}))');

sgtitle('For Input Signal: \delta[n]');



% shifted unit impulse by three units
n2 = -20:20;
x2 = (n2 == -3);
N0_2 = find(n2 == 0);
X2 = DT_Fourier(x2,N0_2,w);
figure;
subplot(2,2,1);
plot(w, abs(X2));
title('magnitude of DTFT');
xlabel('\omega'); ylabel('|X(e^{j\omega})|');

subplot(2,2,2);
plot(w, angle(X2));
title('phase of DTFT');
xlabel('\omega'); ylabel('phase');

subplot(2,2,3);
plot(w, real(X2));
title('real parts of DTFT');
xlabel('\omega'); ylabel('real(X(e^{j\omega}))');

subplot(2,2,4);
plot(w, imag(X2));
title('imaginary parts of DTFT');
xlabel('\omega'); ylabel('imag(X(e^{j\omega}))');

sgtitle('For Input Signal: \delta[n+3]');



% rectangular pulse from -3 to 3
n3 = -20:20;
x3 = (n3 >= -3) & (n3 <= 3);
N0_3 = find(n3 == 0);
X3 = DT_Fourier(x3,N0_3,w);
figure;
subplot(2,2,1);
plot(w, abs(X3));
title('magnitude of DTFT');
xlabel('\omega'); ylabel('|X(e^{j\omega})|');

subplot(2,2,2);
plot(w, angle(X3));
title('phase of DTFT');
xlabel('\omega'); ylabel('phase');

subplot(2,2,3);
plot(w, real(X3));
title('real parts of DTFT');
xlabel('\omega'); ylabel('real(X(e^{j\omega}))');

subplot(2,2,4);
plot(w, imag(X3));
title('imaginary parts of DTFT');
xlabel('\omega'); ylabel('imag(X(e^{j\omega}))');

sgtitle('For Input Signal: rectangular pulse [-3,3]');



% finite duration sinusoid with w0 = pi/4 
n4 = -200:200;
w0 = pi/4;
x4 = sin(w0 * n4);
N0_4 = find(n4 == 0);
X4 = DT_Fourier(x4,N0_4,w);
figure;
subplot(2,2,1);
plot(w, abs(X4));
title('magnitude of DTFT');
xlabel('\omega'); ylabel('|X(e^{j\omega})|');

subplot(2,2,2);
plot(w, angle(X4));
title('phase of DTFT');
xlabel('\omega'); ylabel('phase');

subplot(2,2,3);
plot(w, real(X4));
title('real parts of DTFT');
xlabel('\omega'); ylabel('real(X(e^{j\omega}))');

subplot(2,2,4);
plot(w, imag(X4));
title('imaginary parts of DTFT');
xlabel('\omega'); ylabel('imag(X(e^{j\omega}))');

sgtitle('For Input Signal: finite sinusoid with \omega0 = pi/4');



% signal a^n u[n] 
n5 = 0:100;
b = 0.01;
a1 = b;
a2 = -b;
u = n5 >=0;
x5_1 = a1.^n5 .* u;
x5_2 = a2.^n5 .* u;

N0_5 = find(n5 == 0);

X5_1 = DT_Fourier(x5_1,N0_5,w);
X5_2 = DT_Fourier(x5_2,N0_5,w);

figure;
subplot(2,2,1);
stem(n5, x5_1);
title('signal for a = b');
xlabel('n'); ylabel('x[n]');

subplot(2,2,2);
plot(w, abs(X5_1));
title('magnitude of DTFT for a = b');
xlabel('\omega'); ylabel('|X(e^{j\omega})|');

subplot(2,2,3);
stem(n5, x5_2);
title('signal for a = -b');
xlabel('n'); ylabel('x[n]');

subplot(2,2,4);
plot(w, abs(X5_2));
title('magnitude of DTFT for a = -b');
xlabel('\omega'); ylabel('|X(e^{j\omega})|');

sgtitle('For Input Signal a^{n} u[n]');