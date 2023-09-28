%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 8
%% Задание 1
disp("задание 1")
syms x;
f = str2sym('1/(1 + x)');
pretty(taylor(f))
%% Задание 2
disp("задание 2")
syms x y;
f = str2sym('1/(x + y)');
pretty(taylor(f, x, 'Order', 7))
pretty(taylor(f, y, 'Order', 7))
%% Задание 3
disp("задание 3")
syms x;
f = str2sym('x * sin(x)');
pretty(taylor(f, x, 2, 'Order', 10))
%% Задание 4
disp("задание 4")
syms k x;

f1 = str2sym('(-1)^k / k^2');
sum1 = symsum(f1, k, 1, Inf)

f2 = str2sym('(-1)^k * ( x^(2*k+1) / factorial(2*k+1) )');
sum2 = symsum(f2, k, 0, Inf)
%% Задание 5
disp("задание 5")
syms n;
f = str2sym('(1/2) * (1 - (1/3)^n)');
lim = limit(f, n, Inf)

if lim ~= 0
    disp("расходится, так как общий член ряда не стремится к нулю.")
else
    disp("сходится.")
end

sum = symsum(f,n,0,Inf)
%% Задание 6
disp("задание 6.1")
sum1 = f_task6(@(n)((0.3).^n), 100)

disp("задание 6.2")
sum2 = f_task6(@(n)((1.5).^n), 100)

disp("задание 6.3")
sum3 = f_task6(@(n)(1./n), 100)

disp("задание 6.4")
sum4 = f_task6(@(n)(1./sqrt(n)), 100)

disp("задание 6.5")
sum5 = f_task6(@(n)(1./(n.^2)), 100)

disp("задание 6.6")
sum6 = f_task6(@(n)(1./(n.^2+2.*n)), 100)
%% Функция для задания 6
function [result] = f_task6(f,n)
    figure;
    grid on;
    hold on;

    k=1:n;
    result = 0;
    plot(k, f(k), '--', 'Color', 'red', 'LineWidth', 3)
    for k=1:n
        result = result + f(k);
        plot(k, result, '*', 'Color', 'blue', 'LineWidth', 1)
    end
    
    legend('график последовательности членов ряда', 'график последовательности частичных сумм ряда');
end
