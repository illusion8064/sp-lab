fs=10000;
td=1;
N=10; %change N={10,15}
f0=100; %change f0={100,150,200}
P=zeros(N);
A=zeros(N);
for k=1:N
    A(k)=1/k;
end
%for k=1:N
%    A(k)=exp(-k);
%end
xn=harmonics(A,f0,P,td,fs);
soundsc(xn,fs);