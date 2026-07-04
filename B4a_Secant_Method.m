clc;
clear;

f = @(x) x^3-x-2;

x0 = input('Enter x0 : ');
x1 = input('Enter X1 : ');
tol = 1e-3;

while abs(x1-x0)>tol

    if f(x1) == f(x0)
        disp('Division by zero! Method fails.');
        return;
    end

    x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));

    x0 = x1;
    x1 = x2;
end

fprintf('Root = %.6f\n',x2);
