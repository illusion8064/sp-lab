fs=10000;
td=1;
N=5;
f0=50;
P=zeros(N);
A=zeros(N);
for k=1:N
    A(k)=1/k;
end
xn=harmonics(A,f0,P,td,fs);
soundsc(xn,fs);

[t_env,env]= envelope(0.2,0.2,0.7,0.4,0.2,fs);
pause(5);
soundsc(xn.*env,fs);
figure;
subplot(3,1,1);
plot(xn);
xlim([0,10000]);
xlabel('frequency(Hz)');
ylabel('x[n]');
subplot(3,1,2);
plot(env);
xlim([0,10000]);
xlabel('frequency(Hz)');
ylabel('env')
subplot(3,1,3);
plot(xn.*env);
xlim([0,10000]);
xlabel('frequency(Hz)');
ylabel('x[n].*env');
