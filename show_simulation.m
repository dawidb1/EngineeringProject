function show_simulation( UIAxes,T,X )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
% UIAxes.YLim = [0 80];

plot(UIAxes, T,X(:,1));
hold(UIAxes,'on')
plot(UIAxes, T,X(:,2));
hold(UIAxes,'on')
plot(UIAxes, T,X(:,3));
hold(UIAxes,'on')
plot(UIAxes, T,X(:,4));

title(UIAxes,"Undefined state");
legend(UIAxes,'MMI','FT4','Thyroid Size','TRAb')

xlabel(UIAxes,'Time (in days)');
% grid;

end

