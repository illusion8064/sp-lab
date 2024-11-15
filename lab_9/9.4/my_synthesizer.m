function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
y = [];

for ii = 1:length(F_notes)
    note_duration = td_notes(ii);
    adsr = adsr * note_duration / sum([adsr(1),adsr(2),adsr(4),adsr(5)]);

    [~,env] = envelope(adsr(1),adsr(2),adsr(3),adsr(4),adsr(5),fs);
    xt = harmonics(A,F_notes(ii),P,td_notes(ii),fs);
    len = min(length(xt), length(env));
    xte = xt(1:len).*env(1:len);
    y = [y,xte];
end
end