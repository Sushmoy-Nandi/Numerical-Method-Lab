clc;
clear;

f = @(x) x^3-x-2;

x = input('Enter x : ');
delta = 0.01;
tol = 1e-3;

while true

    den = f(x + delta*x) - f(x);

    % Avoid division by zero
    if den == 0
        disp('Division by zero! Method fails.');
        return;
    end

    x1 = x - (delta*x*f(x))/den;

    if abs(x1-x)<tol
        break;
    end

    x = x1;
end

fprintf('Root = %.6f\n',x1);
