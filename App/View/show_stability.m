function show_stability(UIAxes, X, points)
    % Wy?wietlenie portret?w fazowych
    p = points;
    
    MMI_FT4 = UIAxes(1);
    MMI_TS = UIAxes(2);
    MMI_TRAB = UIAxes(3);
    
    FT4_MMI = UIAxes(4);
    FT4_TS = UIAxes(5);
    FT4_TRAB = UIAxes(6);
    
    TS_MMI = UIAxes(7);
    TS_FT4 = UIAxes(8);
    TS_TRAB = UIAxes(9);
        
    TRAB_MMI = UIAxes(10);
    TRAB_FT4 = UIAxes(11);
    TRAB_TS = UIAxes(12);
    
    MMI = X(:,1);
    FT4 = X(:,2);
    TS = X(:,3);
    TRAB = X(:,4);
    
    plot_phase(MMI_FT4, MMI, FT4, p.x, p.y, 'MMI', 'FT4');
    plot_phase(MMI_TS, MMI, TS, p.x, p.z, 'MMI', 'TS');
    plot_phase(MMI_TRAB, MMI, TRAB, p.x, p.w, 'MMI', 'TRAB');
    
    plot_phase(FT4_MMI, FT4, MMI, p.y, p.x, 'FT4', 'MMI');
    plot_phase(FT4_TS, FT4, TS, p.y, p.z, 'FT4', 'TS');
    plot_phase(FT4_TRAB, FT4, TRAB, p.y, p.w, 'FT4', 'TRAB');
    
    plot_phase(TS_MMI, TS, MMI, p.z, p.x, 'TS', 'MMI');
    plot_phase(TS_FT4, TS, FT4, p.z, p.y, 'TS', 'FT4');
    plot_phase(TS_TRAB, TS, TRAB, p.z, p.w, 'TS', 'TRAB');
    
    plot_phase(TRAB_MMI, TRAB, MMI, p.w, p.x, 'TRAB', 'MMI');
    plot_phase(TRAB_FT4, TRAB, FT4, p.w, p.y, 'TRAB', 'FT4');
    plot_phase(TRAB_TS, TRAB, TS, p.w, p.z, 'TRAB', 'TS');

%     x = round(x,3);
%     y = round(y,3);
%     ytickformat(UIAxes,'%.0f')  
%     xtickformat(UIAxes,'%.0f')

%     set(UIAxes,'xtick', 1)
%     set(UIAxes,'ytick', 1)
%     hold(UIAxes,'on')
%     plot(UIAxes, eigenX, eigenY, 'r*');
end

