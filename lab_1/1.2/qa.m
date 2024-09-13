function F = fourierCoeff(t, xt, T, t1, t2, N)

w0 = 2 * pi / T;
flag = -N;
F = zeros(2 * N + 1, 1);

for nn = 1:2*N+1
    F(nn) = (1/T) * int(xt * exp(-1i * flag * w0 * t), t, t1, t2);
    flag = flag + 1;
end

end