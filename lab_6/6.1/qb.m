unit_pulse = ones(1, 4);

conv1 = conv(unit_pulse, unit_pulse);    
conv2 = conv(conv1, unit_pulse);           
conv3 = conv(conv2, unit_pulse);           
conv4 = conv(conv3, unit_pulse);
figure;

subplot(2,2,1);
stem(conv1);
title('1st Convolution (Pulse * Pulse)');
subplot(2,2,2);
stem(conv2);
title('2nd Convolution (Result1 * Pulse)');
subplot(2,2,3);
stem(conv3);
title('3rd Convolution (Result2 * Pulse)');
subplot(2,2,4);
stem(conv4);
title('4th Convolution (Result3 * Pulse)');