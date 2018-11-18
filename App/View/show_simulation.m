function show_simulation( UIAxes,T,X, pLabel )
%show_simulation Summary of this function goes here
%   Detailed explanation goes here

% UIAxes.YLim = [0 80];

plot(UIAxes, T,X(:,1), 'r');
hold(UIAxes,'on')
plot(UIAxes, T,X(:,2), 'b');
hold(UIAxes,'on')
plot(UIAxes, T,X(:,3), 'g');
hold(UIAxes,'on')
plot(UIAxes, T,X(:,4), 'm');


title(UIAxes, pLabel + " treatment vaweforms");
legend(UIAxes,'MMI','FT4','Thyroid Size','TRAb')

xlabel(UIAxes,'Time (in days)');
ylabel(UIAxes,'Patient vaweforms');
% grid;

end
