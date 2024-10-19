function X = continuousFT(t,xt,a,b,omega)
    syms t_sym
    xt=subs(xt,t,t_sym);
    X=zeros(1,length(omega));
    for i=1:length(omega)
        integrand= xt*exp(-1j*omega(i)*t_sym);
        X(i)=double(int(integrand,t_sym,a,b));
    end
end