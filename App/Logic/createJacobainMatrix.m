function matrix = createJacobainMatrix( patient )
%createJacobainMatrix Summary of this function goes here
%   Detailed explanation goes here
    syms x y z w;

    a1 = -(patient.k1*patient.ka*z + patient.k2*(x+patient.ka)^2)/(x+patient.ka);
    a2 = 0;
    a3 = -x*patient.k1/(x+patient.ka);
    a4 = 0;

    b1 = 0;
    b2 = -patient.k4;
    b3 = w*patient.k3 / (w + patient.kd);
    b4 = z*patient.k3*patient.kd/(w+patient.kd)^2;

    c1 = -z*patient.k6;
    c2 = 0;
    c3 = -w*patient.k5/z^2 - x*patient.k6;
    c4 = patient.k5/z;

    d1 = -patient.k7 * patient.kb /(x+patient.kb)^2;
    d2 = 0;
    d3 = 0; 
    d4 = -patient.k8;

    matrix = [a1 a2 a3 a4;
        b1 b2 b3 b4;
        c1 c2 c3 c4;
        d1 d2 d3 d4];
    pretty(matrix);
end

