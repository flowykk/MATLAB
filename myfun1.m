function f = myfun1(x)
    %% файл-функция myfun1 с 1 входным аргументом 
    f = exp(-x).*sqrt((x.^2 + 1)./(x.^4 + 0.2)); 
end