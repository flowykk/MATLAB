%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по алгебре семинар 8
%% Задание 1
disp("задание 1")
A = [5 0 -3 0 0; 
    1 3 0 -1 0;
    0 1 7 0 -2; 
    0 0 1 22 0; 
    0 0 0 1 8];
AN = sparse(A)
B = full(AN)
%% Задание 2
disp("задание 2")
irow = [1 2 2 3 1 3 4 2 4 5 3 5];
jcol = [1 1 2 2 3 3 3 4 4 4 5 5];
nzer = [5 1 3 1 -3 7 1 -1 22 1 -2 8];
AN = sparse(irow, jcol, nzer, 5, 5)
B = full(AN)
whos A AN

if (B == A)
    disp('получились равные матрицы')
end
%% Задание 3
disp('Задание 3')
A = [5 0 -3 0 0; 
    1 3 0 -1 0;
    0 1 7 0 -2; 
    0 0 1 22 0; 
    0 0 0 1 8];
AN = sparse(A);
[ir, jc, nz] = find(AN);
nz
%% Задание 4
disp("задание 4")
A = [5 0 -3 0 0; 
    1 3 0 -1 0;
    0 1 7 0 -2; 
    0 0 1 22 0; 
    0 0 0 1 8];
A = load('matrix.dat')
AN = spconvert(A)
full(AN)
%% Задание 5
disp("задание 5")
A = [5 0 -3 0 0; 
    1 3 0 -1 0;
    0 1 7 0 -2; 
    0 0 1 22 0; 
    0 0 0 1 8];
[B,d] = spdiags(A);
AF = full(spdiags(B,d,5,5))

if (AF == A)
    disp('получились равные матрицы')
end
%% Задание 6
disp("задание 6")
B = [4 1 0 0 1 0
     1 4 1 0 0 0
     0 1 4 0 0 0
     0 0 0 4 0 1
     1 0 0 0 4 1
     0 0 0 1 1 4];

[BB,d] = spdiags(B);
b_spdiags = full(spdiags(BB, d, 6, 6));
if full(b_spdiags) == B
    disp('получились равные матрицы после упаковки spdiags()')
end
whos B b_spdiags

b_sparse = sparse(B);
if full(b_sparse) == B
    disp('получились равные матрицы после упаковки sparse()')
end
whos B b_sparse
%% Задание 7
disp('Задание 7')
b = [4 1 0 0 1 0; 
    1 4 1 0 0 0; 
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];
spy(b)
%% Задание 8
disp('Задание 8')
b = [4 1 0 0 1 0; 
    1 4 1 0 0 0; 
    0 1 4 0 0 0;
    0 0 0 4 0 1;
    1 0 0 0 4 1;
    0 0 0 1 1 4];
B = symrcm(b);
BF = full(b(B,B));
spy(BF)
%% Задание 9
disp('Задание 9')
B = [7 1 1 1 1
     1 7 0 0 0
     1 0 7 0 0
     1 0 0 7 0
     1 0 0 0 7];
right1 = chol(B);
km = symrcm(B);
right2 = chol(B(km, km));

disp("Количество ненулевых элементов до: " + nnz(right1))
disp("Количество ненулевых элементов после: " + nnz(right2))
