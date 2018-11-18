function show_stability(UIAxes, x, y)
    % Wyœwietlenie portretów fazowych

    % plot(X(:,1),X(:,2),'r');
    % hold on;
    % plot(X(:,1),X(:,3),'b');
    % hold on;
    
%     x = round(x,3);
%     y = round(y,3);
    plot(UIAxes, x, y, 'b', 'LineWidth',2);
    
    axis(UIAxes, [0 40 0 40])

%     ytickformat(UIAxes,'%.0f')  
%     xtickformat(UIAxes,'%.0f')

%     set(UIAxes,'xtick', 1)
%     set(UIAxes,'ytick', 1)
%     hold(UIAxes,'on')
%     plot(UIAxes, eigenX, eigenY, 'r*');
end

