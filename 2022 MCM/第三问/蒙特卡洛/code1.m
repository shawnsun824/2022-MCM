clear;
clc;
load cond%����Լ������
load M;
n=200000;%���ؿ���ģ�����
w=0;%���������
xpos=zeros(49,1);%�����ʷ����
for counter=1:n
        x=zeros(49,1);
        N=randi([27,33]);%ѡ�����ɼ��ֵ�Ʒ����
        Y=zeros(49,1);%ѡ�����ļ�����Ʒ
        a1=randperm(49,N);%ѡ���˵�Ʒ�ı��
        for i=1:N
            for j=1:49
                if j==a1(i)
                    Y(j)=1;
                end
            end
        end
        %���ϴ������ѡ����Ҫ���۵ĵ�Ʒ
        %������ɶ���
        for i=1:49
            if Y(i)==1%ѡ�е�
                x(i)=(b(i)-lb(i))*rand()+lb(i);%��֤����������Լ������
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
        if i>=1&&i<=17%��Ҷ��
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