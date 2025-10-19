clc;
clear;
load data;
%sign为编号索引，第二列是编号对应第一列的1，2，3....如此方便后续编程
%用1，2，3...替换编号
[n1,m1]=size(data);
[n2,m2]=size(sign);
for i=1:n1
    for j=1:n2
        if data(i,2)==sign(j,2)
           data(i,2)=sign(j,1);
        end
    end
end
for i=1:n1
    if data(i,2)>0&&data(i,2)<100
        data(i,4)=1;
    elseif data(i,2)>=100&&data(i,2)<=104
        data(i,4)=2;
    elseif data(i,2)>=105&&data(i,2)<=122
        data(i,4)=3;
    elseif data(i,2)>=123&&data(i,2)<=132
        data(i,4)=4;
    elseif data(i,2)>=133&&data(i,2)<=175
        data(i,4)=5;
    elseif data(i,2)>=176&&data(i,2)<=246
        data(i,4)=6;
    end
end