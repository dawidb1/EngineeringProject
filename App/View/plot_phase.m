function plot_phase(ax, x, y, px, py, xlab, ylab)

    plot(ax, x, y, 'LineWidth',2);
    axis(ax, [0 40 0 40]);
    xlabel(ax, xlab);
    ylabel(ax, ylab);
    
    hold(ax,'on');
    plot(ax, px, py, '*r');
    legend(ax,'portrait phaze','stability point')

end

