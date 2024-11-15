t = 0:0.001:2;
x = cos(5*pi*t);
Ts_val = [0.1, 0.2, 0.3, 0.4];
t_fine = 0:0.001:2;
figure;
for i = 1:length(Ts_val)
    Ts = Ts_val(i);
    t_samples = 0:Ts:2;
    x_samples = cos(5*pi*t_samples);
    xr = sinc_recon(t_samples, x_samples, Ts, t_fine);

    subplot(2,2,i);
    plot(t_fine, cos(5*pi*t_fine),'b', 'LineWidth',1.5); hold on;
    plot(t_fine, xr, 'r', 'LineWidth', 1.5);
    % stem(t_samples, x_samples, 'k', 'MarkerFaceColor', 'k', 'LineWidth', 1.5);
    title(['reconstruction for Ts = ',num2str(Ts), 's']);
    xlabel('time(s)'); ylabel('amplitude');
    legend('original signal', 'reconstructed signal', 'samples');
    grid on;
end