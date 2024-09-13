% given parameters
r = 0.95;
theta = pi/3;

% zeros
zeros = [exp(1i*theta), exp(-1i*theta)];

% poles
poles = [r*exp(1i*theta), r*exp(-1i*theta)];

% coefficients 
b = poly(zeros); 
a = poly(poles);

% plotting poles and zeros
zplane(b, a);
disp(b);
disp(a);
title('poles and zeros of the given system');
grid on;
