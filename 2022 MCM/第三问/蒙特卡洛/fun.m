function f=fun(x)
    load initprice
    %1-17��Ҷ�࣬18-19�����࣬20-26ˮ�������࣬27-31���࣬32-41�����࣬42-49ʳ�þ���
    f=0;
    for i=1:49
        if i>=1&&i<=17%��Ҷ��
            f=f+x(i)*f1(x(i))-f1(x(i))*initp(i)/(1-M(i));
        elseif i>=18&&i<=19
            f=f+x(i)*f2(x(i))-f2(x(i))*initp(i)/(1-M(i));
        elseif i>=20&&i<=26
            f=f+x(i)*f3(x(i))-f3(x(i))*initp(i)/(1-M(i));
        elseif i>=27&&i<=31
            f=f+x(i)*f4(x(i))-f4(x(i))*initp(i)/(1-M(i));
        elseif i>=32&&i<=41
            f=f+x(i)*f5(x(i))-f5(x(i))*initp(i)/(1-M(i));
        elseif i>=42&&i<=49
            f=f+x(i)*f6(x(i))-f6(x(i))*initp(i)/(1-M(i));
        end
        
        
        
    end
    f=-f;
end

