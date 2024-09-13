% Define parameters
p1 = 0.8; % First value of p
p2 = 1 - 1j; % Second value of p
resolution = 0.01; % Grid resolution
[x, y] = meshgrid(-1.5:resolution:1.5, -1.5:resolution:1.5); % Create grid

% Convert x, y to complex z
z = x + 1j * y;

% Compute log magnitude for p = 0.8
X1 = log(abs(z ./ (z - p1)));
figure;
mesh(x, y, X1);
title('Log Magnitude of X(z) for p = 0.8');
xlabel('Real');
ylabel('Imaginary');
zlabel('log|X(z)|');
rotate3d on;

% Compute log magnitude for p = 1 - j
X2 = log(abs(z ./ (z - p2)));
figure;
mesh(x, y, X2);
title('Log Magnitude of X(z) for p = 1 - j');
xlabel('Real');
ylabel('Imaginary');
zlabel('log|X(z)|');
rotate3d on;
