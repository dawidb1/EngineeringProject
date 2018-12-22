function TRAb = calculateTRAb(s, dose, k1, k2, ka)
%CALCULATETRAB Summary of this function goes here
%   Detailed explanation goes here
x = cX0(dose);
TRAb = (s - k2*x)*(ka+x) / (k1*x);
end

