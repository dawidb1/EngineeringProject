classdef rownania_rozniczkowe
    %ROWNANIA_ROZNICZKOWE Summary of this class goes here
    %   Detailed explanation goes here   
    properties
        dx_dt,
        dy_dt,
        dz_dt,
        dw_dt
    end
    
    methods
        function obj = rownania_rozniczkowe(patient, initialValues)
            %ROWNANIA_ROZNICZKOWE Construct an instance of this class
            %   Detailed explanation goes here
                % rownania rozniczkowe
            obj.dx_dt = s - (k1*z*x)/(ka+x) - k2*x;
            obj.dy_dt = (k3*z)*w/(kd+w) - k4*y;
            obj.dz_dt = k5*(w/z - N) - k6*z*x;
            obj.dw_dt = k7 - k7*x/(kb+x) - k8*w;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

