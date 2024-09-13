% given values of r and theta
% for fixed theta
r_val = [0.1, 0.5, 0.9, 0.99];
theta_val = [0, pi/3, pi/2, 5*pi/6, pi];
n = 101; 

figure;
for i = 1:length(theta_val)
    theta = theta_val(i);
    figure;
    for j = 1:length(r_val)
        r = r_val(j);
        
        % zeros and poles based on r and theta
        zeros = [exp(1i*theta), exp(-1i*theta)];
        poles = [r*exp(1i*theta), r*exp(-1i*theta)];
        
        % polynomial coefficients from zeros and poles
        b = poly(zeros);
        a = poly(poles);
        
        % finding impulse response
        subplot(2,2,j);
        impz(b, a, n);
        title(['r = ', num2str(r)]);
        xlabel('n'); 
        ylabel('amplitude');
        grid on;
    end
sgtitle(['Impulse Response for \theta = ', num2str(theta)]);
end