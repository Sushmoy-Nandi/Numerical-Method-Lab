clc;
clear;

% Input true and approximate values--
tVal = input('Enter True Value = ');
aVal = input('Enter Approximate Value = ');

% Calculate errors--
absE = abs(tVal - aVal);
relE = absE / abs(tVal);
perE = relE * 100;

% Display results--
fprintf('Absolute Error = %f\n', absE);
fprintf('Relative Error = %f\n', relE);
fprintf('Percentage Error = %f%%\n', perE);
