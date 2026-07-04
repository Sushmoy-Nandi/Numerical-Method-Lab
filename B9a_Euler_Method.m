
clc;
clear;

f = @(x,y) x + y;

x = 0;
y = 1;
h = 0.1;
xn = 1;    % Final value of x

while x < xn

    y = y + h * f(x,y);
    x = x + h;

end

fprintf('y(%.1f) = %.6f\n', x, y);
