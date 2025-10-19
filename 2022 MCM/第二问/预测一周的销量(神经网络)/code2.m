clear;
clc;
load data;
load neuralnet;
[n1,m1]=size(data1);
%data1是预测所需数据，第一列代表销量，第二列代表单价，第三列代表类别,第四列代表时间（天）
%用1，2，3...替换日期（天）
%X为销量与时间数组矩阵，行代表时间（天），1-6列分别为6种品类销量
X=zeros(365*3,6);
for i=1:1095
    for j=1:n1
        if data1(j,4)==i
        X(i,data1(j,3))=X(i,data1(j,3))+data1(j,1);
        end
    end
end
time=1:1095;
time=time';
new_time=1096:1102;
new_time=new_time';
for i=1:7
    predict_y(i,:)=sim(net,new_time(i));
end
predict_y(i,:)=predict_y(i,:)';
% future=zeros(6,7);
% future=future+100;
% seq_x_test = con2seq(future);
% a=sim(net,seq_x_test)