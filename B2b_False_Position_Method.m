
clc;
clear;

f = @(x) x^3 - x - 2;

a = input('Enter the a: ');
b = input('Enter the b: ');
tol = 1e-5;

if f(a) * f(b) > 0
    disp('Invalid interval! Root is not bracketed.');
    return;
end

while abs(b-a)>tol

    c = (a*f(b)-b*f(a))/(f(b)-f(a));

    if f(c)==0
        break;
    elseif f(a)*f(c)<0
        b = c;
    else
        a = c;
    end
end

fprintf('Root = %.6f\n', c);
