clc;
clear;

f = @(x) x^3 - x - 2;

a = input('Enter a : ');
b = input('Enter b : ');
tol = 1e-5;

%---while---
while (b-a)/2 > tol
    c = (a+b)/2;

    if f(c)==0
        break;
    elseif f(a)*f(c)<0
        b = c;
    else
        a = c;
    end
end

%---for---
% for i = 1:100
%     c = (a+b)/2;
% 
%     % Stop if tolerance is reached
%     if (b-a)/2 <= tol
%         break;
%     end
% 
%     % Update interval
%     if f(c)==0
%         break;
%     elseif f(a) * f(c) < 0
%         b = c;
%     else
%         a = c;
%     end
% end

%---Result---
fprintf('Root = %.6f\n', c);
