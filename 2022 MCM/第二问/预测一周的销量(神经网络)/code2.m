clear;
clc;
load data;
load neuralnet;
[n1,m1]=size(data1);
%data1��Ԥ���������ݣ���һ�д����������ڶ��д����ۣ������д������,�����д���ʱ�䣨�죩
%��1��2��3...�滻���ڣ��죩
%XΪ������ʱ����������д���ʱ�䣨�죩��1-6�зֱ�Ϊ6��Ʒ������
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