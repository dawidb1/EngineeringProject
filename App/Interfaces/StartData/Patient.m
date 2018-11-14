classdef Patient
    properties
        k1, k2, ka, k3, kd, k4, k5, N, k6, k7, kb, k8, label
    end
    methods
        function obj = Patient(k1, k2, ka, k3, kd, k4, k5, N, k6, k7, kb, k8, label)
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
        function table = getTable(obj)
            table = {
                'k1', obj.k1;
                'k2', obj.k2;
                'ka', obj.ka;
                'k3', obj.k3;
                'kd', obj.kd;
                'k4', obj.k4;
                'k5', obj.k5;
                'N',  obj.N;
                'k6', obj.k6;
                'k7', obj.k7;
                'kb', obj.kb;
                'k8', obj.k8; 
                 };
        end
        function vector = getVector(obj)
            result = [ obj.k1, obj.k2, obj.ka, obj.k3, obj.kd, obj.k4, obj.k5, obj.N, obj.k6,obj.k7, obj.kb, obj.k8 ];
            vector = result;
        end
    end
end

