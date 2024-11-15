function xr = sinc_recon(n, xn, Ts, t_fine)
    wc = pi/Ts;
    xr = zeros(1, length(t_fine));  % Initialize output array
    for k = 1:length(t_fine)
        for l = 1:length(n)
            if(t_fine(k) ~= n(l))
                xr(k) = xr(k) + Ts * xn(l) * sin(wc * (t_fine(k) - n(l))) / (pi*(t_fine(k) - n(l)));
            else
                xr(k) = xr(k) + Ts *xn(l) * wc / pi;
            end
        end
    end
end