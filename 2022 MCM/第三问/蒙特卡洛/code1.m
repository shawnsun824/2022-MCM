clear;
clc;
load cond%线性约束条件
load M;
n=200000;%蒙特卡洛模拟次数
w=0;%最佳利润率
xpos=zeros(49,1);%最佳历史坐标
for counter=1:n
        x=zeros(49,1);
        N=randi([27,33]);%选择生成几种单品个数
        Y=zeros(49,1);%选择了哪几个单品
        a1=randperm(49,N);%选择了单品的标号
        for i=1:N
            for j=1:49
                if j==a1(i)
                    Y(j)=1;
                end
            end
        end
        %以上代码随机选择了要销售的单品
        %随机生成定价
        for i=1:49
            if Y(i)==1%选中的
                x(i)=(b(i)-lb(i))*rand()+lb(i);%保证满足了线性约束条件
            end
            
        end      
                f=-fun(x);
                if f>w              
                    w=f;
                    xpos=x;
                end                       

end
fx=zeros(49,1);
fxin=zeros(49,1);
for i=1:49
    if xpos(i)~=0
        if i>=1&&i<=17%花叶类
            fx(i)=f1(xpos(i));
            fxin(i)=fx(i)/(1-M(i)*0.01);
        elseif i>=18&&i<=19
            fx(i)=f2(xpos(i));
            fxin(i)=fx(i)/(1-M(i)*0.01);
        elseif i>=20&&i<=26
            fx(i)=f3(xpos(i));
            fxin(i)=fx(i)/(1-M(i)*0.01);
        elseif i>=27&&i<=31
            fx(i)=f4(xpos(i));
            fxin(i)=fx(i)/(1-M(i)*0.01);
        elseif i>=32&&i<=41
            fx(i)=f5(xpos(i));
            fxin(i)=fx(i)/(1-M(i)*0.01);
        elseif i>=42&&i<=49
            fx(i)=f6(xpos(i));
            fxin(i)=fx(i)/(1-M(i)*0.01);
        end
    end
end