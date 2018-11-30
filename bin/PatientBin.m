classdef Patient
    properties
        k1, k2, ka, k3, kd, k4, k5, N, k6, k7, kb, k8,
        label
    end
    methods
    function obj = Patient(k1, k2, ka, k3, kd, k4, k5, N, k6, k7, kb, k8, label)
        if nargin == 1
            obj.k1 = k1(1);
            obj.k2 = k1(2);
            obj.ka = k1(3);
            obj.k3 = k1(4);
            obj.kd = k1(5);
            obj.k4 = k1(6);
            obj.k5 = k1(7);
            obj.N = k1(8);
            obj.k6 = k1(9);
            obj.k7 = k1(10);
            obj.kb = k1(11);
            obj.k8 = k1(12);
        elseif nargin == 2
            obj.k1 = k1(1);
            obj.k2 = k1(2);
            obj.ka = k1(3);
            obj.k3 = k1(4);
            obj.kd = k1(5);
            obj.k4 = k1(6);
            obj.k5 = k1(7);
            obj.N = k1(8);
            obj.k6 = k1(9);
            obj.k7 = k1(10);
            obj.kb = k1(11);
            obj.k8 = k1(12);
            obj.label = label;
        else
            obj.k1 = k1;
            obj.k2 = k2;
            obj.ka = ka;
            obj.k3 = k3;
            obj.kd = kd;
            obj.k4 = k4;
            obj.k5 = k5;
            obj.N = N;
            obj.k6 = k6;
            obj.k7 = k7;
            obj.kb = kb;
            obj.k8 = k8;
            obj.label = label;
        end
    end

    function vector = getVector(obj)
        vector = [ obj.k1, obj.k2, obj.ka, obj.k3, obj.kd, obj.k4, obj.k5, obj.N, obj.k6, obj.k7, obj.kb, obj.k8 ];
    end
end
end

