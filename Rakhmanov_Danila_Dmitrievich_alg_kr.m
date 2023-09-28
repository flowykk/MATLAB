%% Рахманов Данила Дмитриевич, 10 подгруппа, КР по алгебре
%% Задание 1
disp("задание 1")
figure;
hold on;
grid on;
x = 0:0.01:3*pi;
y=sin(x);
plot(x,y);
%% Задание 2
disp("задание 2")
x = rand()
if x >= 0.5
    y = x;
else
    y = 1 - x;
end
y
%% Задание 3
disp("задание 3")
syms x;
limit((1-x)/log(x),x,1)
%% Задание 4
disp("задание 4")
syms x;
limit(1 - (exp(-x)/x),x,Inf)
%% Задание 5
disp("задание 5")
syms x a;
limit((x-a)/log(x-a+1),x,a)
%% Задание 6
disp("задание 6")
x = 0.01:0.1:2*pi;
f = sin(x)./x;
g = exp(-x).*cos(x);

% 1
figure
axis equal;
grid on;
hold on;
plot(x,f);
title('f(x)');
xlabel('x');
ylabel('y');
legend('sin(x)/x');

figure
axis equal;
grid on;
hold on;
plot(x, g);
title('g(x)');
xlabel('x');
ylabel('y');
legend('exp(-x)*cos(x)');

% 2
figure
axis equal;
grid on;
hold on;
plot(x, f);
plot(x, g);
title('f(x), g(x)');
xlabel('x');
ylabel('y');
legend('sin(x)/x','exp(-x)*cos(x)');

% 3
figure
subplot(2,1,1)
axis equal;
grid on;
hold on;
plot(x, f);
title('f(x)');
xlabel('x');
ylabel('y');
legend('sin(x)/x');

subplot(2,1,2)
axis equal;
grid on;
hold on;
plot(x, g);
title('g(x)');
xlabel('x');
ylabel('y');
legend('exp(-x)*cos(x)');
%% Задание 7
disp("задание 7")
figure;
hold on;
grid on;
t = -2*pi:0.01:3*pi;
x = sin(t);
y = 2*cos(t);
plot(x,y);
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;
v = -pi:0.05*pi:pi; 
u = v';
x = 6*sin(u)*cos(v);
y = 6*sin(u)*sin(v); 
z = 3*cos(u)*ones(size(v)); 
surf(x, y, z);
[ux, uy, uz] = surfnorm(x, y, z); 
quiver3(x,y,z,ux,uy,uz,'Color', 'Black');
view(30, 30);
%% Задание 9
disp("задание 9")
figure;
hold on;
grid on;
a = 1;
b = 1;
c = 1;
[x, y]=meshgrid(-3:0.1:3);
z = ((x.^2/a.^2+y.^2/b.^2-1)*c^2).^0.5;
surf(x, y, abs(z));
surf(x, y, -abs(z));
view(30, 30);
%% Задание 10
disp("задание 10")
figure;
hold on;
grid on;
v = -4*pi:0.1*pi:4*pi;
u = v';
x = 2*u*cos(v);
y = 3*u*sin(v);
z = u*ones(size(v));
surf(x,y,z);
view(30,15);