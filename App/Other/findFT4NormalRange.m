function timeUpFT4 = findFT4NormalRange(T, X)
%FINDFT4NORMALRANGE Summary of this function goes here
%   Detailed explanation goes here

t = T;
y = X(:,2);

UP_FT4 = 18;
DOWN_FT4 = 7;

k = find(round(y) == UP_FT4, 1, 'first');
l = find(round(y) == DOWN_FT4, 1, 'first');

timeUpFT4 = t(k);
timeDownFT4 = t(l);

lastFT4Value = y(end);

disp("Time to FT4 normal range upper limit: " + ceil(timeUpFT4));
disp("Time to FT4 normal range lower limit: " + ceil(timeDownFT4));

disp("Last day FT4 value: " + lastFT4Value);

end