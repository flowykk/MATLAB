%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 6
%% Задание 1
disp("задание 1")
p = [1 1 0 0 1 3];
q = [1 2 1 -10];
s = conv(p, q);
disp(poly2sym(s));
%% Задание 2
disp("задание 2")
p = [1 0 0 1 0 0 1 0 -1];
q = [1 0 2 -1];
[d, r] = deconv(p,q);
disp(poly2sym(d));
%% Задание 3
disp("задание 3")
p = [1 0 1 1 3 2 -16 -1];
q = [1 0 -116 1];
[d, r] = deconv(p,q);
disp(poly2sym(r));
%% Задание 4
disp("задание 4")
p = [1 0 0 1 4 2 3 0 1 3];
q = [3 0 0 2 -3 -9];
sm = p + [zeros(1, length(p) - length(q)), q];
disp(poly2sym(sm));
%% Задание 5
disp("задание 5")
p = [1 2 0 0 4 2 0 3 3];
q = [1 0 0 0 0 0 0 0 2 0];
sm = [zeros(1, length(q) - length(p)), p] - q;
disp(poly2sym(sm));
%% Задание 6
disp("задание 6")
p = [2 3 0 1 -10 -1 1024];
s = polyder(p);
disp(poly2sym(s));
%% Задание 7
disp("задание 7")
figure;
hold on;
grid on;

x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
t = 0:0.05:2;

p1 = polyfit(x, y, 1);
P1 = polyval(p1, t);

p3 = polyfit(x, y, 3);
P3 = polyval(p3, t);

p4 = polyfit(x, y, 4);
P4 = polyval(p4, t);

p5 = polyfit(x, y, 5);
P5 = polyval(p5, t);

p6 = polyfit(x, y, 6);
P6 = polyval(p6, t);

p7 = polyfit(x, y, 7);
P7 = polyval(p7, t);

plot(t, P1, '-co', t, P3, '-mo', t, P4, '-kx', t, P5, '-g*', t, P6, '-s', t, P7, ':b');
title('приближения полинома разных степеней');
legend('исходные данные', '1 степень', '3 степень', '4 степень', '5 степень', '6 степень', '7 степень');
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;

x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
xs = [x(1):0.01:x(10)];

yspline = interp1(x, y, xs, 'spline');
ynearest = interp1(x, y, xs, 'nearest');
ypchip = interp1(x, y, xs, 'pchip');
ylinear = interp1(x, y, xs, 'linear');

plot(x, y, '-s', xs, yspline, '-c', xs, ynearest, '-m', xs, ypchip, '-k', xs, ylinear, '-g')
title('4 типа интерполяции функции');
legend('исходная функция', 'интерполяция spline', 'интерполяция nearest', 'интерполяция pchip', 'интерполяция linear');
%% Задание 9
disp("задание 9")
figure;
hold on;
axis equal;
grid on;

[x, y] = meshgrid(0:0.2:1);
[xp, yp] = meshgrid(0:0.02:1);
z = sin(3*pi*x).*sin(3*pi*y).*exp(-x.^2 - y.^2);

subplot(3, 2, 1);
surfl(x, y, z);
title('исходная функция');

subplot(3, 2, 2);
znear = interp2(x, y, z, xp, yp, 'nearest');
surf(xp, yp, znear);
title('nearest');

subplot(3, 2, 3);
zbilinear = interp2(x, y, z, xp, yp, 'bilinear');
surf(xp, yp, zbilinear);
title('bilinear');

subplot(3, 2, 5);
zbicubic = interp2(x, y, z, xp, yp, 'bicubic');
surf(xp, yp, zbicubic);
title('bicubic');

subplot(3, 2, 4);
zspline = interp2(x, y, z, xp, yp, 'spline');
surf(xp, yp, zspline);
title('spline');