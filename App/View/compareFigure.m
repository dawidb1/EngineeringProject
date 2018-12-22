function compareFigure(fig, t, fnc)
%PRINTFIGURE Summary of this function goes here
% Detailed explanation goes here

% Create a temporary figure with axes.
% fig = figure;
fig = figure;
fig.Visible = 'on';
figAxes = axes(fig);
% Copy all UIAxes children, take over axes limits and aspect ratio.            
% allChildren = plotFigure.XAxis.Parent.Children;
% copyobj(allChildren, figAxes)
% 

% legend(iPlot.legend);
for i = 1: length(fnc)
    
    hold(figAxes, 'on');
    plot(figAxes,t,fnc(i).Data);
    hold(figAxes, 'on');
end


% figAxes.XLim = plotFigure.XLim;

figAxes.YLim = [0 40];

% iPlot = plotConst();
% xlabel(iPlot.xlabel);
% ylabel(iPlot.ylabel);
% grid

% Save as png and fig files.
% saveas(fig, name, 'png');

% Delete the temporary figure.
% delete(fig);
end