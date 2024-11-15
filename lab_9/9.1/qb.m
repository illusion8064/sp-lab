F2=[480,620];
td2=0.5; 
b1=SineSum(A,F2,P,td2,fs); 
z1=zeros(1,length(b1)); 
x=[b1,z1];
x2=[x,x,x,x]; 
sound(x2,fs); 