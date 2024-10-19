subplot(3,1,3);
plot(t, qe, 'k', 'LineWidth', 1.5);
title('quantization error e_q[n]');
xlabel('time');
ylabel('error');
ylim([-0.5, 0.5]);