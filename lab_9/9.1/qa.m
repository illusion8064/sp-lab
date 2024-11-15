fs=10000;
A=[0.5,0.5];
P=[0,0];
F1 = [350, 440]; 
td1 = 4; 
x1 = SineSum(A, F1, P, td1, fs);
sound(x1, fs); 