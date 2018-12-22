function show_simulation_test( T,X )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
plot(T,X(:,1),'r');
title("Undefined state");
hold on;
plot(T,X(:,2),'b');
hold on;
plot(T,X(:,3),'g');
hold on;
plot(T,X(:,4),'m');
legend('MMI','FT4','Thyroid Size','TRAb')

xlabel('Time (in days)');
grid;

end

