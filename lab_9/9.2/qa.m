fs=10000;
td=1;
N=5;
f0=50;
P=zeros(N);
A=zeros(N);
for k=1:N
    A(k)=1/k;
end
x1=harmonics(A,f0,P,td,fs);
soundsc(x1,fs);