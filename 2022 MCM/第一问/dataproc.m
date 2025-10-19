clear;
clc;
load data;
[n1,m1]=size(selldata);
[n2,m2]=size(sign);
%selldata�����۵����ݣ���һ�д����ţ��ڶ��д��������������д�������,�����д������۵���
%signΪ����������ڶ����Ǳ�Ŷ�Ӧ��һ�е�1��2��3....��˷���������
%purchaseΪ������
%��1��2��3...�滻���
for i=1:n1
    for j=1:n2
        if selldata(i,1)==sign(j,2)
            selldata(i,1)=sign(j,1);
        end
    end
end
%20��21��22��23�������
Sales2020=zeros(n2,12);
Sales2021=zeros(n2,12);
Sales2022=zeros(n2,12);
Sales2023=zeros(n2,12);

%����20������
for i=1:n1
        for j=1:12%ʮ�����·�
            if (selldata(i,3)>=2020*10000+j*100)&&(selldata(i,3)<2020*10000+j*100+99)%������ϵ�ǰ����
                   Sales2020(selldata(i,1),j)=Sales2020(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%����21������
for i=1:n1
        for j=1:12%ʮ�����·�
            if (selldata(i,3)>=2021*10000+j*100)&&(selldata(i,3)<2021*10000+j*100+99)%������ϵ�ǰ����
                   Sales2021(selldata(i,1),j)=Sales2021(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%����22������
for i=1:n1
        for j=1:12%ʮ�����·�
            if (selldata(i,3)>=2022*10000+j*100)&&(selldata(i,3)<2022*10000+j*100+99)%������ϵ�ǰ����
                   Sales2022(selldata(i,1),j)=Sales2022(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%����23������
for i=1:n1
        for j=1:12%ʮ�����·�
            if (selldata(i,3)>=2023*10000+j*100)&&(selldata(i,3)<2023*10000+j*100+99)%������ϵ�ǰ����
                   Sales2023(selldata(i,1),j)=Sales2023(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%����ƽ�����۵���
avprice=zeros(n2,2);%��һ���ۼۣ��ڶ��н���
tem=0;%������
for j=1:n2
    for i=1:n1
        if(selldata(i,1)==j)
            tem=tem+1;
            avprice(j,1)=avprice(j,1)+selldata(i,4);
        end
    end
    avprice(j,1)=avprice(j,1)/tem;
    tem=0;%����
end
%����ƽ������
[n3,m3]=size(purchase);
%�����滻���
for i=1:n3
    for j=1:n2
        if purchase(i,2)==sign(j,2)
            purchase(i,2)=sign(j,1);
        end
    end
end
tem=0;
for j=1:n2
    for k=1:n3
        if purchase(k,2)==j
            tem=tem+1;
            avprice(j,2)=avprice(j,2)+purchase(k,3);
        end
    end
    avprice(j,2)=avprice(j,2)/tem;
    tem=0;
end
            