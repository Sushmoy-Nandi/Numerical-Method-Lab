clc;
clear;

x=[1 2 3];
y=[2 3 5];

xp=2.5;

p=0;

for i=1:length(x)

    L=1;

    for j=1:length(x)

        if i~=j
            L=L*(xp-x(j))/(x(i)-x(j));
        end

    end

    p=p+L*y(i);

end

fprintf('Interpolated Value = %.4f\n',p);
