function f=fun4(x)
load Z;
global d;
     f=(-1.429*x+ 31.74 )*x-(-1.429*x+ 31.74 )*Z(d,4)/(1-0.07122);%วั
f=-f;
end