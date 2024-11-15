function xn=harmonics(A,f0,P,td,fs)
         N = length(A);
         t = 0:1/fs:td;
         xn = zeros(size(t));
         for k = 1:N
             xn = xn + A(k)*sin(2*pi*k*f0*t + P(k));
         end
 end
