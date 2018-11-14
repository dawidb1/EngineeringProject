classdef State
    properties
        MMI, FT4, Thyroid_Size, TRAb, MMI_Orally, label,
        x, y, z, w
        % MMI   %ammount of MMI mg/L of blood serum at time t
        % FT4   %amount of FT4 pg/mL of blood serum at time t
        % Thyroid_Size    %functional size of thyroid gland (mL) or the volume of proportion of active cells at time t
        % TRAb    %the amount of TRAb (U) per milliliter of blood serum at time t
        % MMI_Orally    %the amount of MMI orally taken per day per liter of body volume (mg/L/day)
    end
    methods
    function obj = State(MMI, FT4, Thyroid_Size, TRAb, label)
        if nargin == 1
            obj.MMI = MMI(1);
            obj.FT4 = MMI(2);
            obj.Thyroid_Size = MMI(3);
            obj.TRAb = MMI(4);
%             obj.MMI_Orally = MMI(5);
        elseif nargin == 2
            obj.MMI = MMI(1);
            obj.FT4 = MMI(2);
            obj.Thyroid_Size = MMI(3);
            obj.TRAb = MMI(4);
%             obj.MMI_Orally = MMI(5);
            obj.label = label;
        elseif nargin == 4
            obj.MMI = MMI;
            obj.FT4 = FT4;
            obj.Thyroid_Size = Thyroid_Size;
            obj.TRAb = TRAb;
%             obj.MMI_Orally = MMI_Orally;
%             obj.label = label;
        elseif nargin == 5
            obj.MMI = MMI;
            obj.FT4 = FT4;
            obj.Thyroid_Size = Thyroid_Size;
            obj.TRAb = TRAb;
%             obj.MMI_Orally = MMI_Orally;
            obj.label = label;
        end
    end
    function vector = getVector(obj)
        vector = [ obj.MMI, obj.FT4, obj.Thyroid_Size, obj.TRAb];
%  vector = [ obj.MMI, obj.FT4, obj.Thyroid_Size, obj.TRAb, obj.MMI_Orally ];
    end
end
end

