function X = DT_Fourier(x,N0,w)

% input
% checking if N0 Is in the valid range
if N0 < 1 || N0 > length(x)
    error('N0 isnt in the valid range');
end

% vector of sample indices for the signal x[n]
n = (1:length(x))-N0;  % n ranges from -N0+1 to length(x)-N0

% DTFT using one loop
X = zeros(1, length(w));  % output vector X
for i = 1:length(w)
    X(i) = sum(x.*exp(-1j*w(i)*n)); 
end
end