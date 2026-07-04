clc;
clear;

a1 = input('a1 = ');
b1 = input('b1 = ');
c1 = input('c1 = ');
d1 = input('d1 = ');

a2 = input('a2 = ');
b2 = input('b2 = ');
c2 = input('c2 = ');
d2 = input('d2 = ');

a3 = input('a3 = ');
b3 = input('b3 = ');
c3 = input('c3 = ');
d3 = input('d3 = ');

m21 = a2/a1;
a2 = a2 - m21*a1;
b2 = b2 - m21*b1;
c2 = c2 - m21*c1;
d2 = d2 - m21*d1;

m31 = a3/a1;
a3 = a3 - m31*a1;
b3 = b3 - m31*b1;
c3 = c3 - m31*c1;
d3 = d3 - m31*d1;

m32 = b3/b2;
b3 = b3 - m32*b2;
c3 = c3 - m32*c2;
d3 = d3 - m32*d2;

x3 = d3/c3;
x2 = (d2 - c2*x3)/b2;
x1 = (d1 - b1*x2 - c1*x3)/a1;

disp('Answer:')
x1
x2
x3