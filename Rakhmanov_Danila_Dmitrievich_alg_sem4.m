%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 4
%% Задание 1
disp("задание 1")
a = [2, 3, 4];
b = [3, 5, 2];
c = [1, 1, 1];
(a + b == b + a)
isequal(a + b, b + a)
((a + b) + c == a + (b + c))
isequal((a + b) + c, a + (b + c))

figure;
subplot(2,2,1); 
grid on; 
axis equal; 
hold on;
title('a + b');
quiver3(0, 0, 0, a(1) + b(1), a(2) + b(2), a(3) + b(3), 1,  'Color', 'red');
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, b(1), b(2), b(3), 1, 'Color', 'blue');
text(a(1), a(2), a(3), '\bfa');
text(b(1), b(2), b(3), '\bfb');
text(a(1) + b(1), a(2) + b(2), a(3) + b(3), '\bfa + b');
view(30, 30);

subplot(2,2,2); 
grid on; 
axis equal; 
hold on;
title('b + a');
quiver3(0, 0, 0, b(1) + a(1), b(2) + a(2), b(3) + a(3), 1, 'Color', 'red');
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, b(1), b(2), b(3), 1, 'Color', 'blue');
text(a(1), a(2), a(3), '\bfa');
text(b(1), b(2), b(3), '\bfb');
text(b(1) + a(1), b(2) + a(2), b(3) + a(3), '\bfb + a');
view(30, 30);

subplot(2, 2, 3);
grid on; 
axis equal; 
hold on;
title('(a + b) + c');
quiver3(0, 0, 0, c(1), c(2), c(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, b(1), b(2), b(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, (a(1) + b(1)) + c(1), (a(2) + b(2)) + c(2), (a(3) + b(3)) + c(3), 'Color', 'red');
text(a(1), a(2), a(3), '\bfa');
text(b(1), b(2), b(3), '\bfb');
text(c(1), c(2), c(3), '\bfc');
text((a(1) + b(1)) + c(1), (a(2) + b(2)) + c(2), (a(3) + b(3)) + c(3), '\bf(a + b) + c');
view(30, 30);

subplot(2, 2, 4);
grid on; 
axis equal; 
hold on;
title('a + (b + c)')
quiver3(0, 0, 0, c(1), c(2), c(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, b(1), b(2), b(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, a(1) + (b(1) + c(1)), a(2) + (b(2) + c(2)), a(3) + (b(3) + c(3)), 1, 'Color', 'red');
text(a(1), a(2), a(3), '\bfa');
text(b(1), b(2), b(3), '\bfb');
text(c(1), c(2), c(3), '\bfc');
text(a(1) + (b(1) + c(1)), a(2) + (b(2) + c(2)), a(3) + (b(3) + c(3)), '\bfa + (b + c)');
view(30, 30);
%% Задание 2
disp("задание 2")
a = [4, 2, 3];
b = [1, 5, 2];
A = 4;
B = 3;
isequal(A*(a+b),A*a+A*b)
isequal((A+B)*a,A*a+B*a)
isequal(A*(B*a),(A*B)*a)
%% Задание 3
disp("задание 3")
a = [3, 4, 5];
a1 = sqrt(a(1)^2 + a(2)^2 + a(3)^2) 
a0 = a / a1
isequal(norm(a0), 1)

b = [4, 2];
b1 = sqrt(b(1)^2 + b(2)^2)
b2 = norm(b)
b0 = b / b1

figure;
subplot(2, 1, 1);
grid on;
axis equal; 
hold on;
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'blue');
quiver3(0, 0, 0, a0(1), a0(2), a0(3), 1, 'Color', 'red');
text(a(1), a(2), a(3), '\bfa');
text(a0(1), a0(2), a0(3), '\bfa0');
view(30, 30);

subplot(2, 1, 2);
grid on;
axis equal; 
hold on;
quiver(0, 0, b(1), b(2), 1, 'b', 'Color', 'blue');
quiver(0, 0, b0(1), b0(2), 1, 'r', 'Color', 'red');
text(b(1), b(2), '\bfb');
text(b0(1), b0(2), '\bfb0');
view(30, 30);
%% Задание 4
disp("задание 4")
a = [3, 4, 5];
cosa = a./norm(a)
anglea = acos(a./norm(a))*180/pi
sum(cosa.^2)

b = [4, 2];
cosb = b./norm(b)
angleb = acos(b./norm(b))*180/pi
sum(cosb.^2)
%% Задание 5
disp("задание 5")
figure;
hold on; 
axis equal;
grid on;
a = [1,-2,0];
b = [0,1,1];
c = [1,2,2];
if (dot(cross(a,b),c) == 0)
    disp('Векторы компланарны')
else
    disp('Векторы некомпланарны')
end

quiver3(0,0,0,0,0,10,1,'Color', 'black','lineWidth',4);
quiver3(0,0,0,0,10,0,1,'Color', 'black','lineWidth',4);
quiver3(0,0,0,10,0,0,1,'Color', 'black','lineWidth',4);

line([0;a(1)],[0;a(2)],[0;a(3)],'Color', 'red');
line([0;b(1)],[0;b(2)],[0;b(3)],'Color', 'blue');
line([0;c(1)],[0;c(2)],[0;c(3)],'Color', 'green');
plot3(a(1),a(2),a(3),'>','Color','red');
plot3(b(1),b(2),b(3),'>','Color','blue');
plot3(c(1),c(2),c(3),'>','Color','green');

quiver3(0,0,0, a(1)/norm(a), a(2)/norm(a), a(3), 1,'Color', 'red','lineWidth',4);
quiver3(0,0,0, b(1)/norm(b), b(2)/norm(b), b(3)/norm(b), 1,'Color', 'blue','lineWidth',4);
quiver3(0,0,0, c(1)/norm(c), c(2)/norm(c), c(3)/norm(c), 1,'Color', 'green','lineWidth',4);

text(0,0,10,'\bf Z');
text(0,10,0,'\bf Y'); 
text(10,0,0,'\bf X'); 
text(a(1),a(2),a(3),'\bfa');
text(b(1),b(2),b(3),'\bfb');
text(c(1),c(2),c(3),'\bfc');
view(30,30);
%% Задание 6
disp("задание 6")
figure;
hold on;
axis equal;
grid on;
p=[2,-3];
q=[1,2];
s=[9,4];
m = det(horzcat(s', q')) / det(horzcat(p', q'));
n = det(horzcat(p', s')) / det(horzcat(p', q'));
mp = m * p;
nq = n * q;
if (p(1)/p(2) == q(1)/q(2))
    disp ('Векторы коллинеарны!');
else
    disp ('Векторы неколлинеарны!');
end

quiver(0, 0, 0, 10, 1, 'Color', 'black');
quiver(0, 0, 10, 0, 1, 'Color', 'black');
quiver(0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2);
quiver(0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2);

quiver(0, 0, q(1), q(2), 1, 'Color', 'red', 'lineWidth', 2);
quiver(0, 0, nq(1), nq(2), 1, 'Color', 'red');
quiver(0, 0, p(1), p(2), 1, 'Color', 'blue', 'lineWidth', 2);
quiver(0, 0, mp(1), mp(2), 1, 'Color', 'blue');
quiver(0, 0, s(1), s(2), 1, 'Color', 'green', 'lineWidth', 2);
line([4 9;9 5],[-6 4;4 10],'Color','black','LineStyle','--');

text(0.3,2,'\bfq');
text(1,-2.4,'\bfp'); 
text(7,4,'\bfs')
text(3,9,'\bfnq');
text(3,-4,'\bfmp'); 
text(-0.5, 1, '\bf i');
text(1, -0.2, '\bf j'); 
text(0, 10, '\bf y');
text(10, 0, '\bf x'); 
%% Задание 7
disp("задание 7")
a = [3,2];
b = [-2,1]; 
c = [4,-4];

figure;
subplot(2,2,1);
hold on; 
axis equal;
grid on;
quiver(0, 0, 0, 8, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 8, 0, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, a(1), a(2), 1, 'Color', 'blue')
quiver(0, 0, b(1), b(2), 1, 'Color', 'blue')
quiver(0, 0, c(1), c(2), 1, 'Color', 'blue')
text(0,10,'y');
text(10,0,'x');
text(-0.5, 1, '\bf i');
text(1, -0.2, '\bf j'); 
text(a(1),a(2),'\bfa');
text(b(1),b(2),'\bfb');
text(c(1),c(2),'\bfc');

subplot(2,2,2);
hold on; 
axis equal;
grid on;
quiver(0, 0, 0, 8, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 8, 0, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, a(1), a(2), 1, 'Color', 'blue')
quiver(0, 0, b(1), b(2), 1, 'Color', 'blue')
quiver(0, 0, c(1), c(2), 1, 'Color', 'red')
text(0,10,'y');
text(10,0,'x');
text(-0.5, 1, '\bf i');
text(1, -0.2, '\bf j'); 
text(a(1),a(2),'\bfa');
text(b(1),b(2),'\bfb');
text(c(1),c(2),'\bfc');
k=([a;b])'\(c)';
quiver(0,0,a(1)*k(1,1),a(2)*k(1,1),1)
quiver(0,0,b(1)*k(2,1),b(2)*k(2,1),1)
line([a(1)*k(1,1) c(1);c(1) b(1)*k(2,1)],[a(2)*k(1,1) c(2);c(2) b(2)*k(2,1)],'Color','black','LineStyle','--')
text(1.5*k(1,1),k(1,1),'m\bfa');
text(-k(2,1),0.5*k(2,1),'n\bfb');

subplot(2,2,3);
hold on; 
axis equal;
grid on;
quiver(0, 0, 0, 8, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 8, 0, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, a(1), a(2), 1, 'Color', 'blue')
quiver(0, 0, b(1), b(2), 1, 'Color', 'red')
quiver(0, 0, c(1), c(2), 1, 'Color', 'blue')
text(0,10,'y');
text(10,0,'x');
text(-0.5, 1, '\bf i');
text(1, -0.2, '\bf j'); 
text(a(1),a(2),'\bfa');
text(b(1),b(2),'\bfb');
text(c(1),c(2),'\bfc');
k=([a;c])'\(b)';
quiver(0,0,a(1)*k(1,1),a(2)*k(1,1),1)
quiver(0,0,c(1)*k(2,1),c(2)*k(2,1),1)
line([a(1)*k(1,1) b(1);b(1) c(1)*k(2,1)],[a(2)*k(1,1) b(2);b(2) c(2)*k(2,1)],'Color','black','LineStyle','--')
text(1.5*k(1,1),k(1,1),'m\bfa');
text(-k(2,1),0.5*k(2,1),'n\bfb');


subplot(2,2,4);
hold on; 
axis equal;
grid on;
quiver(0, 0, 0, 8, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 8, 0, 1, 'Color', 'black', 'lineWidth', 1)
quiver(0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2)
quiver(0, 0, a(1), a(2), 1, 'Color', 'red')
quiver(0, 0, b(1), b(2), 1, 'Color', 'blue')
quiver(0, 0, c(1), c(2), 1, 'Color', 'blue')
text(0,10,'y');
text(10,0,'x');
text(-0.5, 1, '\bf i');
text(1, -0.2, '\bf j'); 
text(a(1),a(2),'\bfa');
text(b(1),b(2),'\bfb');
text(c(1),c(2),'\bfc');
k=([b;c])'\(a)';
quiver(0,0,b(1)*k(1,1),b(2)*k(1,1),1)
quiver(0,0,c(1)*k(2,1),c(2)*k(2,1),1)
line([b(1)*k(1,1) a(1);a(1) c(1)*k(2,1)],[b(2)*k(1,1) a(2);a(2) c(2)*k(2,1)],'Color','black','LineStyle','--')
text(1.5*k(1,1),k(1,1),'m\bfa');
text(-k(2,1),0.5*k(2,1),'n\bfb');
%% Задание 8
disp("задание 8")
a = [2, 1, 0];
b = [1, -1, 2]; 
c = [2, 2, -1];
d = [3, 7, -7];

figure;
subplot(1,2,1);
grid on; 
axis equal; 
hold on;
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'red', 'lineWidth', 2);
quiver3(0, 0, 0, b(1), b(2), b(3), 1, 'Color', 'blue', 'lineWidth', 2);
quiver3(0, 0, 0, c(1), c(2), c(3), 1, 'Color', 'green', 'lineWidth', 2);
quiver3(0, 0, 0, d(1), d(2), d(3), 1, 'Color', 'yellow', 'lineWidth', 2);
quiver3(0, 0, 0, 0, 0, 10, 1, 'Color', 'black');
quiver3(0, 0, 0, 0, 10, 0, 1, 'Color', 'black');
quiver3(0, 0, 0, 10, 0, 0, 1, 'Color', 'black');
quiver3(0, 0, 0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2);
quiver3(0, 0, 0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2);
quiver3(0, 0, 0, 1, 0, 0, 1, 'Color', 'black', 'lineWidth', 2);
text(0, 10, 0, '\bfy');
text(10, 0, 0, '\bfx');
text(0, 0, 10, '\bfz');
text(0, 0, 1,'\bfk');
text(0, 1, 0,'\bfi');
text(1, 0, 0,'\bfj');
view(30, 30);

subplot(1,2,2);
grid on; 
axis equal; 
hold on;
d_bcd=det([b;c;d]');
d_acd=det([a;c;d]');
d_bad=det([b;a;d]');
d_bca=det([b;c;a]');
k = [d_acd/d_bcd; d_bad/d_bcd; d_bca/d_bcd];
quiver3(0, 0, 0, a(1), a(2), a(3), 1, 'Color', 'red', 'lineWidth', 2);
quiver3(0, 0, 0, b(1), b(2), b(3), 1, 'Color', 'blue', 'lineWidth', 2);
quiver3(0, 0, 0, c(1), c(2), c(3), 1, 'Color', 'green', 'lineWidth', 2);
quiver3(0, 0, 0, d(1), d(2), d(3), 1, 'Color', 'yellow', 'lineWidth', 2);
quiver3(0, 0, 0, 0, 0, 10, 1, 'Color', 'black');
quiver3(0, 0, 0, 0, 10, 0, 1, 'Color', 'black');
quiver3(0, 0, 0, 10, 0, 0, 1, 'Color', 'black');
quiver3(0, 0, 0, 0, 0, 1, 1, 'Color', 'black', 'lineWidth', 2);
quiver3(0, 0, 0, 0, 1, 0, 1, 'Color', 'black', 'lineWidth', 2);
quiver3(0, 0, 0, 1, 0, 0, 1, 'Color', 'black', 'lineWidth', 2);
text(0, 10, 0, '\bfy');
text(10, 0, 0, '\bfx');
text(0, 0, 10, '\bfz');
text(0, 0, 1,'\bfk');
text(0, 1, 0,'\bfi');
text(1, 0, 0,'\bfj');
quiver3(0,0,0,b(1)*k(1,1),b(2)*k(1,1),b(3)*k(1,1),1)
quiver3(0,0,0,c(1)*k(2,1),c(2)*k(2,1),c(3)*k(2,1),1);
quiver3(0,0,0,d(1)*k(3,1),d(2)*k(3,1),d(3)*k(3,1),1);
view(30, 30);
%% Задание 9
disp("задание 9")
a = [1, -2, 0];
b = [0, 1, 2]; 
c = [1, 2, 2];

disp("1 свойство")
isequal(dot(a, b), dot(b, a))
disp("2 свойство")
isequal(dot(a + b, c), dot(a , c) + dot(b, c))
disp("2' свойство")
isequal(dot(a, b + c), dot(a , b) + dot(a, c))
disp("3 свойство")
k = 5;
isequal(dot(k * a, b), k * dot(a, b))
disp("3' свойство")
isequal(dot(a, k * b), k * dot(a, b))
disp("4 свойство")
disp("a != 0:")
dot(a, a)
disp("a == 0:")
a = [0, 0, 0];
dot(a, a)
%% Задание 10
disp("задание 10")
a = [1, -2, 0];
b = [0, 1, 2]; 
c = [1, 2, 2];

disp("2 свойство")
isequal(cross(cross(a, b), c), cross(a, cross(b, c)))
disp("3 свойство")
isequal(cross(a, b) == cross(a, c), b == c)
disp("4 свойство")
isequal(cross(cross(a, b), b), cross(a, cross(b, b)))
