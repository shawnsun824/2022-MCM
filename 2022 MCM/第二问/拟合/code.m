clear;
clc;
load A2
%A2为处理好的数据
%A 1-6分别为花叶，花菜，水生根茎，茄，辣椒，菌
%画出散点图和拟合曲线
subplot(2,3,1)
    x1=A1(:,2);
    y1=A1(:,1);
    plot(x1,y1,'.')
    xlabel('成本加成定价')
    ylabel('销量/天')
    title('花叶')
    hold on;
    x10=0;
    x20=25.225;
    y10=224.2;
    y20=0;
    line([x10, x20], [y10, y20],'color','red','LineWidth',2);
subplot(2,3,2)
    x2=A2(:,2);
    y2=A2(:,1);
    plot(x2,y2,'.')
    xlabel('成本加成定价')
    ylabel('销量/天')
    title('花菜')
    hold on;
    x10=0;
    x20=23.9138;
    y10=54.93;
    y20=0;
    line([x10, x20], [y10, y20],'color','red','LineWidth',2);
subplot(2,3,3)
    x3=A3(:,2);
    y3=A3(:,1);
    plot(x3,y3,'.')
    xlabel('成本加成定价')
    ylabel('销量/天')
    title('水生根茎')
    hold on;
    x10=0;
    x20=20.6447;
    y10=59.56;
    y20=0;
    line([x10, x20], [y10, y20],'color','red','LineWidth',2);
subplot(2,3,4)
    x4=A4(:,2);
    y4=A4(:,1);
    plot(x4,y4,'.')
    xlabel('成本加成定价')
    ylabel('销量/天')
    title('茄')
    hold on;
    x10=0;
    x20=31.74 /(1.429);
    y10=31.74 ;
    y20=0;
    line([x10, x20], [y10, y20],'color','red','LineWidth',2);

    subplot(2,3,5)
    x5=A5(:,2);
    y5=A5(:,1);
    plot(x5,y5,'.')
    xlabel('成本加成定价')
    ylabel('销量/天')
    title('辣椒')
    hold on;
    x10=0;
    x20=101.6  /(3.164);
    y10=101.6  ;
    y20=0;
    line([x10, x20], [y10, y20],'color','red','LineWidth',2);
subplot(2,3,6)
    x6=A6(:,2);
    y6=A6(:,1);
    plot(x6,y6,'.')
    xlabel('成本加成定价')
    ylabel('销量/天')
    title('食用菌')
    hold on;
    x10=0;
    x20=99.73  /(4.496);
    y10=99.73  ;
    y20=0;
    line([x10, x20], [y10, y20],'color','red','LineWidth',2);
