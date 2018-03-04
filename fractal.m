function axiom = fractal(N)
    axiom='FX';
    F='F';
    X='X+YF+';
    Y='-FX-Y';
    tetta=pi/2;
    alpha=0;
    j=1; %номер элемента аксиомы
    r=1; %номер элемента правил
    i=1; %номер итерации
    a=1; %номер элемента массива
    while i<=N  %цикл записи правил в новый массив 
        lng_ax = length(axiom);
        while j<=lng_ax
            if axiom(j) == 'F'
                while r<=length(F)
                    array(a) = F(r);
                    r=r+1;
                    a=a+1;
                end
            elseif axiom(j)=='X'
                while r<=length(X)
                    array(a) = X(r);
                    r=r+1;
                    a=a+1;
                end
            elseif axiom(j)=='Y'
                while r<=length(Y)
                    array(a) = Y(r);
                    r=r+1;
                    a=a+1;
                end
            elseif axiom(j)=='+'
                array(a) = '+';
                a=a+1;
            elseif axiom(j) =='-'
                array(a) = '-';
                a=a+1;
            end 
            r=1;
            j=j+1;
        end
        j=1;
        a=1;
        i=i+1;
        axiom=array;  %FX+YF++-FX-YF++-FX+YF+--FX-YF++-
    end
    line = animatedline;  %рисуем первый след
    i=2;
    j=1;
    x(1)=0;
    y(1)=0;
    addpoints(line,x(1),y(1));
    drawnow
    while j<=length(axiom) %рисуем фрактал
        if axiom(j) == 'F'
            x(i) = x(i-1)+cos(alpha);
            y(i) = y(i-1)+sin(alpha);
            addpoints(line,x(i),y(i));
            i=i+1;
            drawnow
        elseif axiom(j)=='+'
            alpha = alpha+tetta;
        elseif axiom(j) =='-'
            alpha = alpha-tetta;
        end 
        j=j+1;
    end
end
