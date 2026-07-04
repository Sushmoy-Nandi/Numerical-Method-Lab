clc;
clear;

f = @(x) x^3 - x - 2;
df = @(x) 3*x^2 - 1;

x = input('Enter x: ');
tol = 1e-5;

while true

    if df(x) == 0
        disp('Derivative is zero. Method fails.');
        return;
    end

    x1 = x - f(x)/df(x);

    if abs(x1-x)<tol
        break;
    end

    x = x1;
end

fprintf('Root = %.6f\n', x1);
