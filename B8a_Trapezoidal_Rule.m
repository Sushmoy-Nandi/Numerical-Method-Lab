
clc;
clear;

f = @(x) x.^2; %--.^ use hoise karon x eikhane vector...

a = input('Enter lower limit: ');
b = input('Enter upper limit: ');
n = input('Enter number of intervals: ');

h = (b-a)/n;

x = a:h:b;
y = f(x);

I = (h/2) * (y(1) + 2*sum(y(2:end-1)) + y(end));

fprintf('Integral = %.4f\n', I);
