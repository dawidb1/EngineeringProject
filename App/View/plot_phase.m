function plot_phase(ax, x, y, xlab, ylab)

    plot(ax, x, y, 'LineWidth',2);
    axis(ax, [0 40 0 40]);
    xlabel(ax, xlab);
    ylabel(ax, ylab);
end

