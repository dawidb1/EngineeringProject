function showFigure(plotFigure)
%PRINTFIGURE Summary of this function goes here
% Detailed explanation goes here

% Create a temporary figure with axes.
fig = figure;
% fig.Visible = 'off';
figAxes = axes(fig);
% Copy all UIAxes children, take over axes limits and aspect ratio.            
allChildren = plotFigure.XAxis.Parent.Children;
copyobj(allChildren, figAxes)

iPlot = plotConst();
legend(iPlot.legend);

figAxes.XLim = plotFigure.XLim;
figAxes.YLim = plotFigure.YLim;

% figAxes.DataAspectRatio = plotFigure.DataAspectRatio;
% figAxes.Title = plotFigure.Title;

% xlabel(iPlot.xlabel);
% ylabel(iPlot.ylabel);
% plotFigure.XLabel
title(plotFigure.Title.String);
xlabel(plotFigure.XLabel.String);
ylabel(plotFigure.YLabel.String);
grid

% Save as png and fig files.
% saveas(fig, name, 'png');

% Delete the temporary figure.
% delete(fig);
end