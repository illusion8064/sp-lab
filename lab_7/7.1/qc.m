T_values=[1,4];
for i=1:length(T_values)
    T=T_values(i);
    X=continuousFT(t,xt,-T,T,omega);
    figure;
    subplot(2,2,1);
    plot(omega,real(X));
    title('Real part of X');
    xlabel('omega');
    ylabel('Re(X(omega))');
    subplot(2,2,2);
    plot(omega,imag(X));
    title('Imaginary part of X');
    xlabel('omega');
    ylabel('Im(X(omega))');
    subplot(2,2,3);
    plot(omega,abs(X));
    title('Magnitude of X');
    xlabel('omega');
    ylabel('|X(omega)|');
    subplot(2,2,4);
    plot(omega,angle(X));
    title('Phase of X');
    xlabel('omega');
    ylabel('Phase(X(omega))');
end