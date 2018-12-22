classdef InitialValues
    properties
        x, y, z, w
    end
    methods
          function obj = InitialValues(x,y,z,w)
              obj.x = x;
              obj.y = y;
              obj.z = z;
              obj. w = w;
          end
    end
end