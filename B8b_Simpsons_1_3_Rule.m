clc;
clear;

f = @(x) x.^2;

a = input('Enter lower limit: ');
b = input('Enter upper limit: ');
n = input('Enter number of intervals: ');

% Simpson's 1/3 Rule requires even n
if mod(n,2) ~= 0
    disp('Error: Number of intervals (n) must be even.');
    return;
end

h = (b-a)/n;

x = a:h:b;
y = f(x);

I = (h/3) * (y(1) + y(end) ...
    + 4*sum(y(2:2:end-1)) ...
    + 2*sum(y(3:2:end-2)));

fprintf('Integral = %.4f\n', I);
