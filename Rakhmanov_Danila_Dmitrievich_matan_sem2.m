%% Рахманов Данила Дмитриевич, 10 подгруппа, Дз по матанализу семинар 2
%% Задание 1a
disp("задание 1a")
main1st = @(x) [x(1)^2-2*x(2)^2+1; -3*x(1)^2+x(2)^2+2; x(1)^3+x(2)^3-2;];
options=optimset('Display','iter'); 
x0 = [0;0];
[x,fval, exitflag,output] = fsolve(main1st, x0 ,options)
%% Задание 1б
disp("задание 1б")
main2nd = @(x) [x(1)^2-2*x(2)^2+x(3)+1; -3*x(1)^2+x(2)^2+x(3)+2;];
options=optimset('Display','iter'); 
x0 = [0;0;0];
[x,fval, exitflag,output] = fsolve(main2nd, x0 ,options)
%% Задание 2
disp("задание 2")
syms x;
limit((10+x)^(1/x),x,0,"left")
limit((10+x)^(1/x),x,0,"right")
%% Задание 3
disp("задание 3")
diff(atan(x),x,1) 

syms x dx;
f(x) = atan(x);
limit((f(x + dx) - f(x))/dx, dx, 0)
%% Задание 4
disp("задание 4")
limit((9*x^2-1)/(x+1/3),x,-1/3)
%% Задание 5
disp("задание 5")
diff((3*cos(5*x^2))^3,x,1)
%% Задание 6a
disp("задание 6а")
syms x y z;
u = sin(x+2*y)+2*sqrt(x*y*z)

diff(diff(u, x), x) 
diff(diff(u, x), y) 
diff(diff(u, x), z) 

diff(diff(u, y), x) 
diff(diff(u, y), y) 
diff(diff(u, y), z) 

diff(diff(u, z), x) 
diff(diff(u, z), y) 
diff(diff(u, z), z) 
%% Задание 6б
disp("задание 6б")
syms x y z;
u = log(3-x^2)+x*(y^2)*z

diff(diff(u, x), x) 
diff(diff(u, x), y) 
diff(diff(u, x), z) 

diff(diff(u, y), x) 
diff(diff(u, y), y) 
diff(diff(u, y), z) 

diff(diff(u, z), x) 
diff(diff(u, z), y) 
diff(diff(u, z), z) 
%% Задание 6в
disp("задание 6в")
syms x y z;
u = x^2-atan(y+z^3)

diff(diff(u, x), x) 
diff(diff(u, x), y) 
diff(diff(u, x), z) 

diff(diff(u, y), x) 
diff(diff(u, y), y) 
diff(diff(u, y), z) 

diff(diff(u, z), x) 
diff(diff(u, z), y) 
diff(diff(u, z), z) 
%% Задание 6г
disp("задание 6г")
syms x y z;
u = (x^3)*(y^2)*z+3*x-5*y+z+2

diff(diff(u, x), x) 
diff(diff(u, x), y) 
diff(diff(u, x), z) 

diff(diff(u, y), x) 
diff(diff(u, y), y) 
diff(diff(u, y), z) 

diff(diff(u, z), x) 
diff(diff(u, z), y) 
diff(diff(u, z), z) 
%% Задание 7
disp("задание 7")
lim1 = limit(sin(x)/x,x,0)
lim2 = limit((1-exp(-x))/x,x,inf)
lim3 = limit((1-x)/log(x),x,1)
%% Задание 8
disp("задание 8b")
f = (x^2)*cos(2*x);
d1 = diff(f,x);
d2 = diff(d1,x);
d3 = diff(d2,x);
d4 = diff(d3,x);
d5 = diff(d4,x);
d6 = diff(d5,x)
%% Задание 9
disp("задание 9")
limit(1-exp(-x)/x,x,inf)
%% Задание 10
disp("задание 10")
syms x a n;
f = exp(-a*x^5)+log(a^n+x^a)-a*n/x^3
d1 = diff(f,x);
d2 = diff(d1,x)