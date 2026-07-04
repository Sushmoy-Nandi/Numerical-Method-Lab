
clc;
clear;

A = [4 1;
     2 3];
x = [1;
     1];

tol = 1e-3;
lambda_old = 0;

while true

    y = A * x;

    lambda = max(abs(y));

    x = y / lambda;

    if abs(lambda - lambda_old) < tol
        break;
    end

    lambda_old = lambda;

end

fprintf('Dominant Eigenvalue = %.6f\n', lambda);
disp('Eigenvector : ')
disp(x)
