T=pi;
xt1=exp(1j*t);
X1 = continuousFT(t,xt1,-T,T,omega);
figure;
subplot(2,2,1);
plot(omega,real(X1));
title('Real part of X');
xlabel('omega');
ylabel('Re(X(omega))');
subplot(2,2,2);
plot(omega,imag(X1));
title('Imaginary part of X');
xlabel('omega');
ylabel('Im(X(omega))');
subplot(2,2,3);
plot(omega,abs(X1));
title('Magnitude of X');
xlabel('omega');
ylabel('|X(omega)|');
subplot(2,2,4);
plot(omega,angle(X1));
title('Phase of X');
xlabel('omega');
ylabel('Phase(X(omega))');

xt2=cos(t);
X2 = continuousFT(t,xt2,-T,T,omega);
figure;
subplot(2,2,1);
plot(omega,real(X2));
title('Real part of X');
xlabel('omega');
ylabel('Re(X(omega))');
subplot(2,2,2);
plot(omega,imag(X2));
title('Imaginary part of X');
xlabel('omega');
ylabel('Im(X(omega))');
subplot(2,2,3);
plot(omega,abs(X2));
title('Magnitude of X');
xlabel('omega');
ylabel('|X(omega)|');
subplot(2,2,4);
plot(omega,angle(X2));
title('Phase of X');
xlabel('omega');
ylabel('Phase(X(omega))');