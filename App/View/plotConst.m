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
            obj.legend = { 'MMI','FT4','Thyroid Size','TRAb','Normal FT4 limits' };
            obj.xlabel = 'Time (in days)';
            obj.ylabel = 'Patient vaweforms';
        end
    end
end

