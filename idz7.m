function S = structure12(V,I)
    D=0;
    R=exist('V');
    H=exist('I');
    D=R+H;
    if(D~=2)
       fprintf('Одна или обе из входных переменных не заданы\n')
        return
    end
    l=length(V);
    if(l==0)
        fprintf('Вектор пуст\n')
        return
    end
    y=class(V);
    u=class(I);
    if(y(1)=='c' || u(1)=='c')
        fprintf('Одна или обе из входных переменных - нечисловое значение\n')
        return
    end
    if(I==0)
        fprintf('Введите количество интервалов больше 0\n')
        return
    end
    if (I>l)
           fprintf('Интервалов больше, чем размер входного вектора\n')
           return
    end
    m=l/I;
    j=1; %% ????? ???????? V
    h=1; %% ????? ?????????
    S(I,1) = struct('STRUCTURE',[]);
    while(h<I+1)
        W = V(round(j):round(m));
        S(h).STRUCTURE = W;
        h=h+1;
        j=j+l/I;
        m=m+l/I; 
    end
end
