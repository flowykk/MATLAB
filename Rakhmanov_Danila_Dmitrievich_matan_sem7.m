%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 7
%% Задание 1
disp("задание 1")
quad(@(x) sin(x)-(x.^3).*cos(x), -4, 0, 1.0e-05)
%% Задание 2
disp("задание 2")
quad(@(x) x.^3+1, 2, 5)
%% Задание 3
disp("задание 3")
dblquad('exp(-x).*sin(y)', -pi, pi, 0, 3)
integral2(@(x,y)(exp(-x).*sin(y)), -pi, pi, 0, 3)
%% Задание 4
disp("задание 4")
figure;
hold on;
grid on;

[X, Y] = meshgrid(-2:0.01:2);
Z = (sin(X).*sin(Y).*(1-X.^2).*X.*(1-Y));
surfl(X, Y, Z)
view(0, 2);

shading interp;
integral2(@(x,y) sin(x).*sin(y).*(1-x.^2).*x.*(1-y), -2, 2, -2, 2)
%% Задание 5
disp("задание 5")
f5 = @(x,y,z) exp(-x).*sin(y).*cos(z);
triplequad(f5, -pi, pi, -2*pi, pi, 0, 2)
integral3(f5, -pi, pi, -2*pi, pi, 0, 2)
%% Задание 6
disp ('Задание 6')
f6 = @(x,y,z) exp(x).*(sin(y)).^2 + exp(-x).*(cos(y)).^2 + sin(y).*cos(x).*z;
integral3(f6, -2*pi, 2*pi, -2*pi, 2*pi, -1, 1)
%% Задание 7
disp("задание 7")
f7 = @(x) 1./x;
quad(f7, 0, 1) % Алгоритм Симпмона
quadl(f7, 0, 1) % Алгоритм Гаусса-Лобатто
quadgk(f7, 0, 1) % Алгоритм Гаусса-Кронрода
%% Задание 8
disp("задание 8")
a = 20;
b = 7;
f8 = @(x,y) a.*cos(x).*x.^2 + b.*sin(y).*y.^2;
integral2(f8, -2, 2, -2, 2)
%% Задание 9
disp("задание 9")
f9 = inline('a*(x.^2) + x + 1', 'x', 'a');
a = 3;
quad(f9, 0, 10, 1.0e-05, 0, a)
%% Задание 10
disp("задание 10")
figure;
hold on;
grid on;

fplot(@F, [0, pi])
F(2)
%% Задание 11
disp("задание 11")
f11 = @(x) cos(x - sqrt(2)).*exp(2*sin(x)) - 1;
quad(f11, fzero(f11, 0), fzero(f11, 4))
%% Задание 12
disp("задание 12")
figure;
hold on;
grid on;

f12_min = inline('sin(x) - (x.^2).*(cos(x))'); 
min = fminbnd(f12_min, -2, -1) 
f12_max = inline('(sin(x) - (x.^2).*(cos(x))) .* -1'); 
max = fminbnd(f12_max, -4, -3) 

f12 = @(x) sin(x) - (x.^2).*cos(x);
integral(f12, f12(min), f12(max))
fplot (f12, [-5, 0]);
%% Функции для заданий

% Функция задания 10
function f = F(y)
    f = quad(@(x) exp(x).*(sin(x) - cos(x)), 0, y, 1.0e-09);
end