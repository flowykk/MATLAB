%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 7
%% Задание 1
disp("задание 1")
a = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
[u, s, v] = svd(a);
x = u * inv(s) * v' * b
a*x
%% Задание 2
disp("задание 2")
a = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
r = chol(a);
y = r' \ b;
r \ y
%% Задание 3
disp('Задание 3')
a = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
tau = 0.1;
x = [0; 0; 0];
n = 250;
for i = 1:n
    r = b - a * x;
    x = x + r * tau;
end
x
%% Задание 4
disp('Задание 4')
a = [6 4 0; 1 3 1; 1 1 3];
b = [16; 4; 0];
x0 = [0; 0; 0];
n = 2000;
eps = 0.0001;
for i=1:length(b)
    for j=1:length(b)
        beta(i) = b(i)/a(i,i);
        if(i == j)
            newa(i,j) = 0;
        else
            newa(i,j) = -a(i,j)/a(i,i);
        end
    end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
    ncount = ncount + 1;
    x1 = beta + newa*x0;
    max = abs(x0(1) - x1(1));
    for i=2:length(x0)
        if abs(x0(i) - x1(i)) > max
            max = abs(x0(i) - x1(i));
        end
    end
    if max < eps || ncount > n
        x = x1;
        x
        break
    else
        x0 = x1;
    end
end
%% Задание 5
disp("задание 5")
a = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x0 = [0; 0; 0];
n = 2000;
eps = 0.0001;
F = a' * a;
H = a' * b;
for i=1:length(b)
    for j=1:length(b)
        beta(i) = H(i)/F(i,i); 
        if (i == j)
            newa(i,j) = 0;
        else 
            newa(i,j) = -F(i,j)/F(i,i);
        end
    end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
    ncount = ncount + 1;
    for i=1:length(b)
        s=0;
        for j = 1:length(b)
            s = s + newa(i,j)*x1(j);
        end
        x1(i) = beta(i) + s;
    end
    max = abs(x0(1) - x1(1));
    for i=2:length(x0)
        if abs(x0(i) - x1(i)) > max
            max = abs(x0(i) - x1(i));
        end
    end
    if max < eps || ncount > n
        x = x1;
        x
        break;
    else 
        x0 = x1;
    end
end
%% Задание 6
disp("задание 6")
a = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x0 = [0; 0; 0];
n = 45;
eps = 0.00001;
F = a' * a;
H = a' * b;
w = 1.4;
for i=1:length(b)
    for j=1:length(b)
        beta(i) = H(i)/F(i,i); 
        if (i == j)
            newa(i,j) = 0;
        else 
            newa(i,j) = -F(i,j)/F(i,i);
        end
    end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
    ncount = ncount + 1;
    for i=1:length(b)
        s = 0;
        for j = 1:length(b)
            s = s + newa(i,j)*x1(j);
        end
        x1(i) = beta(i) + s + (w - 1)*(beta(i) + s - x0(i));
    end
    for i=2:length(x0)
       if  abs(x0(i) - x1(i)) > max
           max = abs(x0(i) - x1(i));
       end
    end
    if max < eps || ncount > n
        x = x1;
        x
        break;
    else 
        x0 = x1;
    end
end
%% Задание 7
disp('Задание 7')
a = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
pcg(a, b)
