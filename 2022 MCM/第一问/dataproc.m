clear;
clc;
load data;
[n1,m1]=size(selldata);
[n2,m2]=size(sign);
%selldata是销售的数据，第一列代表编号，第二列代表销量，第三列代表日期,第四列代表销售单价
%sign为编号索引，第二列是编号对应第一列的1，2，3....如此方便后续编程
%purchase为批发价
%用1，2，3...替换编号
for i=1:n1
    for j=1:n2
        if selldata(i,1)==sign(j,2)
            selldata(i,1)=sign(j,1);
        end
    end
end
%20，21，22，23年的销量
Sales2020=zeros(n2,12);
Sales2021=zeros(n2,12);
Sales2022=zeros(n2,12);
Sales2023=zeros(n2,12);

%计算20年销量
for i=1:n1
        for j=1:12%十二个月份
            if (selldata(i,3)>=2020*10000+j*100)&&(selldata(i,3)<2020*10000+j*100+99)%如果符合当前日期
                   Sales2020(selldata(i,1),j)=Sales2020(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%计算21年销量
for i=1:n1
        for j=1:12%十二个月份
            if (selldata(i,3)>=2021*10000+j*100)&&(selldata(i,3)<2021*10000+j*100+99)%如果符合当前日期
                   Sales2021(selldata(i,1),j)=Sales2021(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%计算22年销量
for i=1:n1
        for j=1:12%十二个月份
            if (selldata(i,3)>=2022*10000+j*100)&&(selldata(i,3)<2022*10000+j*100+99)%如果符合当前日期
                   Sales2022(selldata(i,1),j)=Sales2022(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%计算23年销量
for i=1:n1
        for j=1:12%十二个月份
            if (selldata(i,3)>=2023*10000+j*100)&&(selldata(i,3)<2023*10000+j*100+99)%如果符合当前日期
                   Sales2023(selldata(i,1),j)=Sales2023(selldata(i,1),j)+selldata(i,2);
            end
        end
end
%计算平均销售单价
avprice=zeros(n2,2);%第一列售价，第二列进价
tem=0;%计数器
for j=1:n2
    for i=1:n1
        if(selldata(i,1)==j)
            tem=tem+1;
            avprice(j,1)=avprice(j,1)+selldata(i,4);
        end
    end
    avprice(j,1)=avprice(j,1)/tem;
    tem=0;%归零
end
%计算平均进价
[n3,m3]=size(purchase);
%数字替换编号
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
            