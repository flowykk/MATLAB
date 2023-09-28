%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 3
%% Задание 1
disp("задание 1")
figure;
hold on;
grid on;
x = -2:0.01:2;
y = exp(-x).*sin(10*x);
plot(x, y);
%% Задание 2
disp("задание 2")
figure;
hold on;
grid on;
area(x,y);
figure;
comet(x,y);
figure;
comet3(x,y,x,0.9);
view(-58,-53);
%% Задание 3
disp("задание 3")
figure;
hold on;
grid on;
axis equal;
view(30,60)
p = pie3([25,10,20,35,10], [0 1 0 0 1]);
p(8).EdgeColor = 'red';
p(20).EdgeColor = 'red';
%% Задание 4
disp("задание 4")
figure;
hold on;
grid on;
x1 = 0:0.01:1;
x2 = 0:(1/99):1;
plot(x1, exp(-x1).*(sin(x1)+0.1*sin(100*pi*x1)),'Color','red');
plot(x2, exp(-x2).*(sin(x2)+0.1*sin(100*pi*x2)),'Color','green');
%% Задание 5
disp("задание 5")
figure;
x = 0:0.01:10;
f = log(2*x);
g = log(x).*sin(2*x);

subplot(1,3,1);
grid on;
axis equal;
loglog(x, f, 'Color','red');
hold on;
loglog(x, g, 'Color','green');
xlabel('log(x)');
ylabel('log(y)');
legend('f(x) = ln(2x)', 'g(x) = ln(x)*sin(2x)', 'Location', 'northeast')

subplot(1,3,2)
grid on;
axis equal;
semilogx(x,f,'Color','red');
hold on;
semilogx(x,g,'Color','green');
xlabel('log(x)');
ylabel('log(y)');
legend('f(x) = ln(2x)', 'g(x) = ln(x)*sin(2x)', 'Location', 'northeast')

subplot(1,3,3)
grid on;
axis equal;
semilogy(x,f,'Color','red');
hold on;
semilogy(x,g,'Color','green');
xlabel('log(x)');
ylabel('log(y)');
legend('f(x) = ln(2x)', 'g(x) = ln(x)*sin(2x)', 'Location', 'northeast')
%% Задание 6
disp("задание 6")
figure;
hold on;
grid on;
t = -pi:0.01:pi;
x = 2*sin(t);
y = 4*cos(t);
plot(x,y);
%% Задание 7
disp("задание 7")
figure;
hold on;
grid on;
x = -3:0.05:3;
y = -3:0.05:3;
[X, Y] = meshgrid(x, y);
z = 4*sin(2*pi*X).*cos(1.5*pi*Y).*(1-X.^2).*Y.*(1-X);
mesh(x,y,z);
view(30, 30);
hidden off;
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;
x = -3:0.05:3;
y = -3:0.05:3;
[X, Y] = meshgrid(x, y);
z = 4*sin(2*pi*X).*cos(1.5*pi*Y).*(1-X.^2).*Y.*(1-X);
sh = -3:0.01:3;
contour3(X, Y, z, sh);
view(30, 30);
colorbar('Direction','reverse');
%% Задание 9
disp("задание 9")
figure;
hold on;
grid on;
x = -3:0.05:3;
y = -3:0.05:3;
[X, Y] = meshgrid(x, y);
z = 4*sin(2*pi*X).*cos(1.5*pi*Y).*(1-X.^2).*Y.*(1-X);
surfl(X,Y,z,[-60,45]) 
view(30, 30);
colormap("HSV");
%% Задание 10
disp("задание 10")
figure;
x = -1:0.1:1;
y = -1:0.1:1;
[X, Y] = meshgrid(x, y);
z = ((sin(X)).^2+(cos(Y)).^2).^(X.*Y);

subplot(2,2,1)
hold on; 
grid on; 
axis equal;
mesh(X,Y,z);
view(30,30);

subplot(2,2,2)
hold on; 
grid on; 
axis equal;
surf(X, Y, z);
view(60, 45);

subplot(2,2,3)
hold on; 
grid on; 
axis equal;
contour3(X, Y, z, 25);
view(135, 30);

subplot(2,2,4)
hold on; 
grid on; 
axis equal;
surfl(X,Y,z,[45,90]) 
view(60, 135);