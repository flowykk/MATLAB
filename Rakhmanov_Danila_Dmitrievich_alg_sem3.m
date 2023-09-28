%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 3
%% Задание 1
disp("задание 1")
figure;
grid on;
axis equal;
line([0;2],[0;1]);
line([0;-1],[0;2]);
line([-2;0],[-4;0]);
%% Задание 2
disp("задание 2")
figure;
grid on;
axis equal;
line([0 0 0;2 2 3],[0 2 2; 1 0 0]);
%% Задание 3
disp("задание 3")
figure;
subplot(2,2,1);
grid on;
axis equal;
line([0 0 0;2 2 3],[0 2 2; 1 0 0]);
subplot(2,2,2);
grid on;
axis equal;
line([0;2],[0;1]);
subplot(2,2,3);
grid on;
axis equal;
line([0;2],[2;0]);
subplot(2,2,4);
grid on;
axis equal;
line([0;3],[2;0]);
%% Задание 4
disp("задание 4")
figure;
hold on;
grid on;
axis equal;
quiver(0,0,2,1,1,'Color', 'black','LineWidth',3);
quiver(0,2,2,-2,1,'Color', 'black','LineWidth',3);
quiver(0,2,3,-2,1,'Color', 'black','LineWidth',3);
%% Задание 5
disp("задание 5")
figure;
hold on;
grid on;
axis equal;
view(30,30)
quiver3(0,0,0,1,0,0,1)
quiver3(0,0,0,0,1,0,1)
quiver3(0,0,0,0,0,1,1)
%% Задание 6
disp("задание 6")
figure;
hold on;
grid on;
axis equal;
quiver(0,0,10,0,1,'LineWidth',3);
quiver(0,0,0,10,1,'LineWidth',3);
quiver(0,0,1,0,1,'Color', 'black','LineWidth',4);
quiver(0,0,0,1,1,'Color', 'black','LineWidth',4);
%% Задание 7
disp("задание 7")
figure;
hold on;
grid on;
axis equal;
view(30,30)
quiver3(0,0,0,10,0,0,1,'LineWidth',2);
quiver3(0,0,0,0,10,0,1,'LineWidth',2);
quiver3(0,0,0,0,0,10,1,'LineWidth',2);
quiver3(0,0,0,1,0,0,1,'Color', 'black','LineWidth',4);
quiver3(0,0,0,0,1,0,1,'Color', 'black','LineWidth',4);
quiver3(0,0,0,0,0,1,1,'Color', 'black','LineWidth',4);
%% Задание 8
disp("задание 8")
figure;
hold on;
grid on;
axis equal;
quiver(-2,0,7,0,1,'Color', 'black')
quiver(0,-7,0,12,1,'Color', 'black')
axis([-2 5 -7 5]);

line([-1;2],[ 3;-5]);
text(-1.5,3.5,'(-1, 3)');
text(1.3,-5.5,'(2, -5)');

line([1,4;2,3],[-1,0;-3,-5]);
text(0.5,-0.5,'(1, -1)');
text(3.5,0.5,'(4, 0)');
text(1.7,-3.2,'(2, -3)');
text(3,-5.5,'(3, -5)');
%% Задание 9
disp("задание 9")
figure;
hold on;
grid on;
axis equal;
A = [-2 0];
B = [1 2];
C = [1 -1];
AB = B - A;
BC = C - B;
AC = C - A;

quiver(A(1),A(2),AB(1),AB(2),1,'Color', 'blue');
quiver(B(1),B(2),BC(1),BC(2),1,'Color', 'blue');
quiver(A(1),A(2),AC(1),AC(2),1,'Color', 'red');
text(-2.2,0,'A');
text(1,2.2,'B');
text(1,-1.2,'C');
%% Задание 10
disp("задание 10")
figure;
A = [-2 0];
B = [1 2];
C = [1 -1];
D = [A(1) (A(2) - B(2) + C(2))];

subplot(1,2,1);
grid on;
axis equal;
hold on;
line([A(1);B(1)],[A(2);B(2)]);
line([B(1);C(1)],[B(2);C(2)]);
line([C(1);D(1)],[C(2);D(2)]);
line([D(1);A(1)],[D(2);A(2)]);
text(A(1)-0.5,A(2),'A');
text(B(1)+0.2,B(2),'B');
text(C(1)+0.2,C(2),'C');
text(D(1)-0.5,D(2),'D');

subplot(1,2,2);
grid on;
axis equal;
hold on;
AD = D - A;
AC = C - A;
DC = C - D;
AB = B - A;
BC = C - B;
quiver(A(1),A(2),AC(1),AC(2),1,'Color', 'red');
quiver(B(1),B(2),BC(1),BC(2),1,'Color', 'black');
quiver(D(1),D(2),DC(1),DC(2),1,'Color', 'black');
quiver(A(1),A(2),AD(1),AD(2),1,'Color', 'blue');
quiver(A(1),A(2),AB(1),AB(2),1,'Color', 'blue');
text(A(1)-0.5,A(2),'A');
text(B(1)+0.2,B(2),'B');
text(C(1)+0.2,C(2),'C');
text(D(1)-0.5,D(2),'D');
%% %% Задание 11
disp("задание 11")
figure;
a1 = [2,4,6];
b1 = [3,5,2];
a2 = [7,6,5];
b2 = [3,5,2];
sum = a1 + b1;
raz = a2 - b2;

subplot(1,2,1);
grid on;
axis equal;
hold on;
view(30,30)
quiver3(0,0,0,a1(1),a1(2),a1(3),1);
quiver3(a1(1),a1(2),a1(3),b1(1),b1(2),b1(3),1);
quiver3(0,0,0,sum(1),sum(2),sum(3),1);
text(a1(1), a1(2), a1(3), '\bfa1')
text(b1(1), b1(2), b1(3), '\bfb1')
text(sum(1), sum(2), sum(3), '\bfa1+b1')

subplot(1,2,2);
grid on;
axis equal;
hold on;
view(30,30)
quiver3(0,0,0,a2(1),a2(2),a2(3),1);
quiver3(a2(1),a2(2),a2(3),-b1(1),-b1(2),-b1(3),1);
quiver3(0,0,0,raz(1),raz(2),raz(3),1);
text(a2(1), a2(2), a2(3), '\bfa2')
text(b2(1), b2(2), b2(3), '\bfb2')
text(raz(1), raz(2), raz(3), '\bfa2-b2')