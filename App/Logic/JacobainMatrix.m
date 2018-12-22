function matrix = JacobainMatrix( patient, initialValues )
%createJacobainMatrix Summary of this function goes here
%   Detailed explanation goes here
%     syms x y z w;
    init = initialValues;

    a1 = -(patient.k1*patient.ka*init.z + patient.k2*(init.x+patient.ka)^2)/(init.x+patient.ka);
    a2 = 0;
    a3 = -init.x*patient.k1/(init.x+patient.ka);
    a4 = 0;

    b1 = 0;
    b2 = -patient.k4;
    b3 = init.w*patient.k3 / (init.w + patient.kd);
    b4 = init.z*patient.k3*patient.kd/(init.w+patient.kd)^2;

    c1 = -init.z*patient.k6;
    c2 = 0;
    c3 = -init.w*patient.k5/init.z^2 - init.x*patient.k6;
    c4 = patient.k5/init.z;

    d1 = -patient.k7 * patient.kb /(init.x+patient.kb)^2;
    d2 = 0;
    d3 = 0; 
    d4 = -patient.k8;

    matrix = [a1 a2 a3 a4;
        b1 b2 b3 b4;
        c1 c2 c3 c4;
        d1 d2 d3 d4];
end

