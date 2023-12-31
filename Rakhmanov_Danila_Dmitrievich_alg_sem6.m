%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 6
%% Задание 1
disp("задание 1")
a = input("введите вектор:");
fliplr(a) 
%% Задание 2
disp("задание 2")
a = input("введите вектор:");
[a(mod(a, 2)==0)] 
[a(mod(a, 2)==1)]
%% Задание 3
disp ('Задание 3')
a = input("введите вектор:");
sum(a(a < 0))
%% Задание 4
disp ('Задание 4')
a = input("введите вектор:");
sr_a = prod(a) .^ (1/length(a))
a(a > sr_a*1.3 | a < sr_a*0.7) = sr_a;
a
%% Задание 5
disp("задание 5")
a = input("введите вектор:");
strrep(a,min(a),max(a))
%% Задание 6
disp("задание 6")
a = input("введите вектор:");

disp("количество элементов > 0: " + length(a(a > 0)))
disp("количество элементов = 0: " + length(a(a == 0)))
disp("количество элементов < 0: " + length(a(a < 0)))
%% Задание 7
A = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 7];
x = A\b

cond(A)
if (A*x ~= b) 
    disp("найденное решение неправильное")
end

C = [A b];
D = rref(C);
x = D(:,4)
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;

t = [0; 0.1*pi; 0.2*pi; 0.3*pi; 0.4*pi; 0.5*pi];
y = [4; 3.5; 3; 2.5; 2; 1.5];
plot(t, y, '*', 'Color', 'red', 'LineWidth', 3)

koefs = [cos(t) t.^2]
x = koefs\y;
a = x(1)
b = x(2)

syms t;
fplot( a.*cos(t) + b.*(t.^2) , [-5 5], '-', 'Color', 'blue')
%% Задание 9
disp("задание 9")
A = [1 2 3; 3 4 5];
b = [2; 2];
x = A\b

disp("матрица b после проверки:")
b = A * x

%% Задание 10
disp("задание 10")
A = [2 3 3; -2 -3 -3];
b = [8; 7];
[x, r] = linsolve(A, b)
%% Задание 11
disp("задание 11")
A = [2 3 3; -2 -3 -3];
b = [8; 7];
[q, r] = qr(A);
x = r\(q'*b)
%% Задание 12
disp("задание 12")
A = [2 4 5; 3 6 7; 8 5 2];
[x, y] = eig(A);
disp("cобственные векторы (по столбцам):")
disp(x)
disp("cобственные числа: " + y(1,1) + ", " + y(2,2) + ", " + y(3,3))

if round(A * x(1:3)') == round(y(1,1) * x(1:3)')
    disp("первый собственный вектор найден правильно")
end