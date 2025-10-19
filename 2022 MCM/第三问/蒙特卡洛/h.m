function h=h(x)
h=0;
    for i=1:49
        if x(i)>40
            h=h+1
        end
    end
    h=49-h;
end