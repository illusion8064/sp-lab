function X = radix2fft(x)

    N = length(x);

    %base case 
    if N==2
        X = [x(1) + x(2); x(1) - x(2)];
        return;
    end

    Xe = radix2fft(x(1:2:N));
    Xo = radix2fft(x(2:2:N));

    X = zeros(N,1);

    for k = 1:N/2
        tw = exp(-2*pi*1i*(k-1)/N);   % W_N^k = e^(-2*pi*j*(k-1)/N)
        X(k) = Xe(k) + tw * Xo(k);
        X(k+N/2) = Xe(k) - tw * Xo(k);
    end
end