F3 = [440, 480];
td3 = 2; 
b2 = SineSum(A, F3, P, td3, fs); 
z2 = zeros(1, length(b2));
x = [b2,z2];
x3 = [x,x,x,x];
sound(x3, fs);