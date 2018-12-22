classdef plotConst
    %plotConst Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        title, legend, xlabel, ylabel
    end
    
    methods
        function obj = plotConst()
            %plotConst Construct constant variable for plot assignment
            obj.title = " treatment vaweforms";
            obj.legend = { 'MMI(mg/L)','FT4(pg/mL)','Thyroid Size(mL)','TRAb(U/mL)','Normal FT4 limits(pg/mL)' };
            obj.xlabel = 'Time (in days)';
            obj.ylabel = 'State Variables';
        end
    end
end

