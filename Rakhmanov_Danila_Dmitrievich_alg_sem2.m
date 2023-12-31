%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 2
%% Задание 1
disp("задание 1")
a1 = [3.25 -1.07 2.34];
a2 = [10.10 0.25 -4.78];
a3 = [5.04 -7.79 3.31];
A = [a1;a2;a3]
%% Задание 2
disp("задание 2")
B = rand(3,3)
%% Задание 3
disp("задание 3")
C1 = A + 10*B
C2 = A*B
C3 = B'
%% Задание 4
disp("задание 4")
d = det(B)
%% Задание 5
disp("задание 5")
C = zeros(3,1);
C(2,1) = 5.71;
C(3,1) = -3.61;
C
%% Задание 6
disp("задание 6")
X = A\C
%% Задание 7
disp("задание 7")
syms x
matrix = [2*cos(x) 1;1 2*sin(x)];
solve(det(matrix) == 0)
%% Задание 8a
disp("задание 8a")
A = [2 -1 -1; -1 2 1; 3 -5 -2];
b = [3; 0; 1];

A1 = A;
A2 = A;
A3 = A;

A1(:, 1) = b;
A2(:, 2) = b;
A3(:, 3) = b;

X = [det(A1) / det(A); det(A2) / det(A); det(A3) / det(A)]
%% Задание 8b
disp("задание 8b")
A = [2 1 0;1 0 3;0 5 -1];
b = [5; 16; 10];

A1 = A;
A2 = A;
A3 = A;

A1(:, 1) = b;
A2(:, 2) = b;
A3(:, 3) = b;

X = [det(A1) / det(A); det(A2) / det(A); det(A3) / det(A)]
%% Задание 9
disp("задание 9")
A = [1 1 1;1 3 1; 1 1 3];
b = [2;4;0];
C=[A b];
D=rref(C);
x=D(:,4)
%% Задание 10
disp("задание 10")
A = [0 -2;1 -3];
B = [5 1;-1 0];
E = eye(2);
C = (3 * B)^2 - 2 * (B * inv(A) - E)'
%% Задание 11
disp("задание 11")
A = [3.81 0.28 1.28 0.75; 2.25 1.32 4.58 0.49; 5.31 6.38 0.98 1.04; 9.39 2.45 3.35 2.28]
b = [1;1;1;1]
[L, U] = lu(A);
y=L\b;
x=U\y
%% Задание 12
disp("задание 12")
A = rand(10,9)
x = A(end, end-1);
x
%% Задание 13
disp("задание 13")
A = [1 -1 3;2 1 -4;3 1 -3];
b = [8;-4;1];
X = A\b