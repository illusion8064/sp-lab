% For p = 0.8
p1 = 0.8;
b = [1 0]; % Coefficients of numerator
a1 = [1 -p1]; % Coefficients of denominator for p = 0.8
figure;
zplane(b, a1);
title('Pole-Zero Plot for p = 0.8');

% For p = 1 - j
p2 = 1 - 1j;
a2 = [1 -p2]; % Coefficients of denominator for p = 1 - j
figure;
zplane(b, a2);
title('Pole-Zero Plot for p = 1 - j');
