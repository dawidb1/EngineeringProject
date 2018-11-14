classdef Dose
    properties
        grams, days
    end
        methods
          function obj = Dose(grams, days)
              obj.grams = grams;
              obj.days = days;
          end
    end
end