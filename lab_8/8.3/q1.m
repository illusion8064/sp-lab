tri_pulse = @(t) max(0, 1-abs(t));
%time grid
t_fine = -10:0.001:10;
Ts_val = [0.5, 0.2, 0.1, 0.05];

figure;
for i = 1:length(Ts_val)
    Ts = Ts_val(i);
    t_samples = -1:Ts:1;
    n = t_samples;
    x_samples = tri_pulse(t_samples);
    xr = sinc_recon(n, x_samples, Ts, t_fine);

    subplot(2,2,i);
    plot(t_fine, tri_pulse(t_fine),'b', 'LineWidth',1.5); hold on;
    plot(t_fine, xr, 'r', 'LineWidth', 1.5);
    % stem(t_samples, x_samples, 'c', 'MarkerFaceColor', 'k', 'LineWidth', 1.5);
    title(['reconstruction for Ts = ',num2str(Ts), 's']);
    xlabel('time(s)'); ylabel('amplitude');
    legend('original signal', 'reconstructed signal', 'samples');
end