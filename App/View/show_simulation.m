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

% show normal FT4
FT4_high_limit = 18;
FT4_low_limit = 7;
hold(UIAxes,'on')

T = T(1):1:T(end);

plot(UIAxes, T, FT4_high_limit * ones(size(T)), '--k');
plot(UIAxes, T, FT4_low_limit * ones(size(T)), '--k');

title(UIAxes, pLabel + " treatment vaweforms");
legend(UIAxes,'MMI','FT4','Thyroid Size','TRAb','Normal FT4 limits')

xlabel(UIAxes,'Time (in days)');
ylabel(UIAxes,'Patient vaweforms');
% grid;

end

