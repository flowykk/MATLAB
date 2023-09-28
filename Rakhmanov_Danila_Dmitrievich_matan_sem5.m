%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 5
%% Задание 1
disp("задание 1")
figure;
hold on;
axis equal;
grid on;

x = 0:0.05:5;
y = myfun1(x);
plot(x, y)
%% Задание 2
disp("задание 2")
figure;
hold on;
axis equal;
grid on;

x = 0:0.05:5;
y = myfun1(x);
plot(x, y, '--');
fplot("myfun1", [0 5], '*', 'LineWidth', 3);
 
help myfun1
lookfor myfun1
%% Задание 3
disp("задание 3")
a = input("input the vector:");
sum_odd(a)
%% Задание 4
disp("задание 4")
figure;
hold on;
axis equal;
grid on;

y = @(x) myfun2(x);
fplot(y, [-5 5]);

fzero(y, [-5 -4])
fzero(y, [-2 -1])
fzero(y, 0)
fzero(y, [4 5])
%% Задание 5
disp("задание 5")
p = [1 0 0 0 0 3 1 -10 -1 1024];
roots = roots(p);
polyval(p, roots)
%% Задание 6
disp ('Задание 6')
figure;
hold on;
axis equal;
grid on;
syms x;

func = inline('exp(x.^2) + sin(3 * pi * x)');
disp("локальные минимумы:")
disp(fminbnd(func, -1, -0.5))
disp(fminbnd(func, -0.5, 0.1))
disp(fminbnd(func, 0.1, 1))


func2 = inline('((exp(x.^2) + sin(3 * pi * x)) * -1)'); 
disp("локальные максимумы:")
disp(fminbnd(func2, -0.8, -0.1))
disp(fminbnd(func2, -0.1, 0.5))
disp(fminbnd(func2, 0.5, 1))

fplot(func(x), [-1 1]);
%% Задание 7
disp("задание 7")
figure;
hold on;
axis equal;
grid on;

func = @(x) x.^2+1;
fplot(func, [-5, 5]) 
disp(fminbnd(func, -5, 5))
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;

[X,Y] = meshgrid(0:0.01:2);
Z = sin(pi*X).*sin(pi*Y);
[C, h] = contour3(X,Y,Z);
clabel(C, h);
colormap(spring);
view(30, 30);

disp('локальные минимумы:')
disp(fminsearch(@fmin, [1.6 0.4]))
disp(fminsearch(@fmin, [0.4 1.6]))

disp('локальные максимумы:')
disp(fminsearch(@fmax, [0.4 0.6]))
disp(fminsearch(@fmax, [1.4 1.6]))

figure;
hold on;
grid on;
surfl(X, Y, Z);
colormap(spring);
view(30, 30);
%% нужные функцые для задач

% задача 3
function f = sum_odd(a)
    f = sum(a(1:2:end));
end

% задача 4
function f = myfun2(x)
    f = sin(x) - (x.^2).*cos(x);
end

% задача 8
function f = fmin(v)
    f = (sin(pi*v(1)).*sin(pi*v(2)));
end

function f = fmax(v)
    f = -(sin(pi*v(1)).*sin(pi*v(2)));
end

