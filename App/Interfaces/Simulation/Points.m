classdef Points
    %POINTS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        x, y, z, w
    end
    
    methods
        function obj = Points(x, y, z, w)
            %POINTS Construct an instance of this class
            %   Detailed explanation goes here
            obj.x = x;
            obj.y = y;
            obj.z = z;
            obj.w = w;
        end
       
    end
end

