
clc;
clear;

A = input('Enter 3x3 coefficient matrix A = ');
B = input('Enter constant matrix B = ');

%---input example---
% A=[2 1 -1; -3 -1 2; -2 1 2]
% B=[8; -11; -3]


% Forward Elimination

m = A(2,1)/A(1,1);
A(2,:) = A(2,:) - m*A(1,:);
B(2) = B(2) - m*B(1);

m = A(3,1)/A(1,1);
A(3,:) = A(3,:) - m*A(1,:);
B(3) = B(3) - m*B(1);

m = A(3,2)/A(2,2);
A(3,:) = A(3,:) - m*A(2,:);
B(3) = B(3) - m*B(2);

% Back Substitution
x3 = B(3)/A(3,3);
x2 = (B(2)-A(2,3)*x3)/A(2,2);
x1 = (B(1)-A(1,2)*x2-A(1,3)*x3)/A(1,1);

fprintf('x1 = %.2f\n',x1);
fprintf('x2 = %.2f\n',x2);
fprintf('x3 = %.2f\n',x3);
