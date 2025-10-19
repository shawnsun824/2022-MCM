function [c,ceq]=nonlfun(x)
ceq=[];
%     c=[g(x)-33;
%         27-g(x)        
%     ]
c=[h(x)-33;
    27-h(x)]
end