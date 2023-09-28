%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 4
%% Задание 1
disp("задание 1")
figure;
hold on;
grid on;
view(30,30);
t = 0:0.01:100;
x = exp(-abs(t-100)/100).*sin(t);
y = exp(-abs(t-100)/100).*cos(t);
z = t;
plot3(x, y, z);
%% Задание 2
disp("задание 2")
figure;
hold on;
grid on;
view(30,10);
v = -4*pi:0.1*pi:4*pi;
u = v';
x = 0.5*u*cos(v);
y = 0.5*u*sin(v);
z = u.*ones(size(v));
surf(x,y,z);
%% Задание 3
disp("задание 3")
figure;
hold on;
grid on;
view(30,10);
v = -2*pi:0.1*pi:2*pi;
u = v';
x = cos(u)*cos(v);
y = 0.6*cos(u)*sin(v);
z = 0.8*sin(u)*ones(size(v));
mesh(x, y, z);
hidden off;
%% Задание 4
disp("задание 4")
fign = figure;
hold on;
grid on;
t = 0:0.2:2;
x = 0.5*t;
y = 0.8*t.*(1-0.5*t);
ux (1:length(x)) = 0.5;
uy = 0.8*(1-t);
quiver(x, y, ux, uy, 0);
quiver(x, y, ux, uy, 1.5);
quiver(x, y, ux, uy, 0.3);
%% Задание 5
disp("задание 5")
figure(fign)
plot(x, y)
%% Задание 6
disp("задание 6")
figure;
t = 0:0.2:2;
x = 0.5*t;
y = 0.8*t.*(1-0.5*t);
ux (1:length(x)) = 0.5;
uy = 0.8*(1-t);
compass(ux, uy);
%% Задание 7
disp("задание 7")
figure;
hold on;
grid on;
t = 0:0.2:2;
x = 0.5*t;
y = 0.8*t-10*t.^2/2; 
ux (1:length(x)) = 0.5;
uy = 0.8*(1-t);
feather(ux, uy);
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;
v = -pi:pi/15:pi; 
u = v';
x = 2*sin(u)*cos(v);
y = 2*sin(u)*sin(v); 
z = 2*cos(u)*ones(size(v)); 
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
b = 3;
[x,y]=meshgrid(-3:0.1:3);
z = (x.^2/a.^2-y.^2/b.^2)/2;
surf(x,y,z)
[ux,uy,uz] = surfnorm(x,y,z);
quiver3(x,y,z,ux,uy,uz,'Color', 'Black'); 
view(30, 30);
%% Задание 10
disp("задание 9")
figure;
grid on;
a = 3;
b = 2;
[x,y]=meshgrid(-2:0.1:2); 
z=((x.^2/a.^2-y.^2/b.^2)/2+1).^(0.5); 
surf(x,y,z);
hold on; 
surf(x,y,-z);
view(30,30);
%% Задание 11
disp("задание 11")
figure;
hold on; 
grid on;
v = 0:0.1:3;
u = v';
x = cos(u)*cos(v);
y = sin(u)*sin(v);
z = u*v;
surf(x,y,z);
view(30, 30);
%% Задание 12
disp("задание 12")
figure;
hold on; 
grid on;

xL = 3;
xR = 3;
yL = -1;
yR = 1;
zL = 0;
zR = 2;

x = xL:0.2:xR;
y = yL:0.2:yR;
z = zL:0.2:zR;
[X, Y, Z] = meshgrid(x, y, z);

U = X./sqrt(X.^2 + Y.^2 + Z.^2);
V = Y./sqrt(X.^2 + Y.^2 + Z.^2);
W = Z./sqrt(X.^2 + Y.^2 + Z.^2);
[Cx, Cy, Cz] = meshgrid(xL:(xR-xL)/3:xR, yL:(yR-yL)/3:yR, zL:(zR-zL)/3:zR);

hC = coneplot(X, Y, Z, U, V, W,'nointerp');
set(hC, 'FaceColor', 'w', 'EdgeColor', 'none');
light;
view(30, 30);