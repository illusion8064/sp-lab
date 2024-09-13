n = 51; % Number of samples

% For p = 0.8
figure;
impz(b, a1, n);
title('Impulse Response for p = 0.8');

% For p = 1 - j
figure;
[h,t]=impz(b, a2, n);
stem(t,real(h),'filled');
title('Impulse Response for p = 1 - j');
xlabel('n');
ylabel('Re(h[n])');