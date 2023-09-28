%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 5
%% Задание 1
disp("задание 1")
a = [1.3; -3; 0.5];
b = [4.2; 6.5; -2];
cross(a, b)
%% Задание 2
disp("задание 2")
a = [1.3; -3; 0.5];
b = [4.2; 6.5; -2];
cross(a, b) + cross(b, a)
%% Задание 3
disp("задание 3")
a = [3.5 0.1 0];
b = [0.5 2.1 1];
c = [-0.2 -1.9 2.8];
dot(a, cross(b, c))
%% Задание 4
disp("задание 4")
a = [3.5 0.1 0];
b = [0.5 2.1 1];
dot(a, b)
%% Задание 5
disp("задание 5")
a = [1 2 3];
b = [4 5 6];
c = [8 7 8];
abs(dot(a, cross(b, c)))
%% Задание 6
disp("задание 6")
a = [1 2 3];
b = [4 4 6 5];
a .* b'
%% Задание 7
disp("задание 7")
figure;
grid on; 
axis equal; 
hold on;

phi = [-pi : 0.1*pi : pi];

[x,y] = pol2cart(phi, 1 ./ (1-0.5*cos(phi)) );
plot(x,y);
 
[x,y] = pol2cart(phi, 1 ./ (1-1*cos(phi)) );
plot(x,y);

[x,y] = pol2cart(phi, 1 ./ (1-2*cos(phi)) );
plot(x,y);
%% Задание 8
disp("задание 8")
phi = [-pi : 0.05*pi: pi];

figure;
grid on; 
axis equal; 
hold on;
[x,y,z] = pol2cart(phi, (1 ./ (1-0.5*cos(phi)))', phi);
plot3(x,y,z);
view(30, 30);

figure;
grid on; 
axis equal; 
hold on;
[x,y,z] = pol2cart(phi, (1 ./ (1-1*cos(phi)))', phi);
plot3(x,y,z);
view(30, 10);

figure;
grid on; 
axis equal; 
hold on;
[x,y,z] = pol2cart(phi, (1 ./ (1-2*cos(phi)))', phi);
plot3(x,y,z);
view(30, 10);
%% Задание 9
disp("задание 9")
figure;
grid on; 
axis equal; 
hold on;

phi = [-pi : 0.01*pi: pi];
[x,y,z] = sph2cart(phi, phi', 1);
plot3(x,y,z);
view(30, 30);
%% Задание 10
disp("задание 10")
figure;
grid on; 
axis equal; 
hold on;

phi = [-pi : 0.01*pi: pi];
[x,y,z] = sph2cart(phi', phi, 1);
plot3(x,y,z);
view(30, 30);