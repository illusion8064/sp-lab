N = 5;
fs = 10000;
A = (1:N).^2;

F_notes = 50:5:100;
P = zeros(1, N);
adsr = [0.1, 0.1, 1, 0.1, 0.1];
td_notes = ones(size(F_notes));

synthesized_signal = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);

soundsc(synthesized_signal, fs);