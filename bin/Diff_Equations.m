%% Variables description
% MMI(time) = the amount of MMI(mg) per liter of blood serum at time time.
% FT4(time) = the amount of FT4 (pg) per milliliter of blood serum at time time
% ThyroidGland(time) = the functional size of thyroid gland (mL) or the volume of proportion of active
    % cells at time time.
% TRAb(time) = the amount of TRAb (U) per milliliter of blood serum at time time.
% MMI_Orally(time) = the amount of MMI orally taken per day per liter of body volume (mg/L/day).

%% diffeerential equations
classdef Diff_Equations
    properties
    MMI,FT4,ThyroidGland,TRAb,MMI_Orally,
    dx_dt, dy_dt, dz_dt, dw_dt, time;
    end
    methods
        function obj = Diff_Equations()
            % MMI, FT4, ThyroidGland, TRAb, MMI_Orally, time
            dx_dt = MMI_Orally(time) - (k1*ThyroidGland*MMI)/(ka+MMI) - k2*MMI;
            dy_dt = k3*ThyroidGland*TRAb/(kd+TRAb) - k4*FT4;
            dz_dt = k5*(TRAb/ThyroidGland - N) - k6*ThyroidGland*MMI;
            dw_dt = k7 - k7*MMI/(kb+MMI) - k8w;
        end
        
        function obj = Set_MMI_Orally(obj)
        %SetMMI_Orally - Description dddddddddddddddd
        %
        % Syntax: obj = SetMMI_Orally()
        %
        % Long description dsfasdfsadfasdfasfasdf
            MMI_BIO_AVAILABILITY = 0.93;
            DOSE_PER_DAY = 30;
            DAYS = 45;
            AVG_MAN_VOLUME = 59.71;
            T_MIN = 0; 
            T_MAKS = 45;

            if (T_MIN <= obj.time) && (obj.time >= T_MAKS)
                obj.MMI_Orally(obj.time) = MMI_BIO_AVAILABILITY * DOSE_PER_DAY * DAYS / AVG_MAN_VOLUME;
            else
                obj.MMI_Orally(obj.time) = 0;
            end
        end

    end
end