function f=fun5(x)
load Z;
global d;
   f=(-3.164*x+ 101.6)*x-(-3.164*x+ 101.6)*Z(d,5)/(1-0.08130972222);%À±½·
f=-f;
end