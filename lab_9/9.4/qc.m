N = 5;
fs = 10000;
A = (1:N).^2;

M = 5;
F_notes = 50+50*rand(1,M);
P = zeros(1, N);
adsr = [0.1, 0.1, 0.6, 0.1, 0.1];
td_notes = 0.5 + rand(1,M);

synthesized_signal = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);

soundsc(synthesized_signal, fs);