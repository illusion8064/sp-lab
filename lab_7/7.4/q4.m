[x_n,Fs] = audioread('6.wav');
B = 3;
a = 1;
x_q = quadratic_quant(x_n,B,a);
disp('Playing original signal');
sound(x_n,Fs);
pause(2);
disp('Playing quantized signal (B = 3)');
sound(x_q,Fs);
pause(2);

for k = 1:8
    x_q = quadratic_quant(x_n,k,a);
    disp(['Playing quantized signal (B = ', num2str(k), ')']);
    sound(x_q,Fs);
    pause(2);
end