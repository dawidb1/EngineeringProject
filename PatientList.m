% Table 3 page 18

classdef PatientList
    properties
        list
    end
    methods
        function obj = PatientList()
            Patient20 = Patient(8.374*10^-3, 3.3271, 0.358068, 0.085, 0.067, 0.099021, 10^6, 0.250, 0.001, 0.26, 4.95, 0.035, "Patient 20");
            Patient31 = Patient(8.374*10^-3, 3.3271, 0.358068, 0.08975, 0.07, 0.099021, 10^6, 0.058, 0.001, 0.61, 11.8, 0.035, "Patient 31");
            Patient55 = Patient(8.374*10^-3, 3.3271, 0.358068, 0.08992, 0.081, 0.099021, 10^6, 0.207, 0.001, 0.22, 4.09, 0.035, "Patient 55");
            Patient70 = Patient(8.374*10^-3, 3.3271, 0.358068, 0.11784, 0.075, 0.099021, 10^6, 0.293, 0.001, 0.308, 3.15, 0.035, "Patient 70");
            obj.list = [Patient20, Patient31, Patient55, Patient70];
        end
    end
end