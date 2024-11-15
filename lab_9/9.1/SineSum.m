function xn=SineSum(A,F,P,td,fs)
    t=0:1/fs:td;
    xn=sum(A'.*sin(2*pi*F'*t+P'),1);
end