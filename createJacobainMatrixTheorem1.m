function matrix = createJacobainMatrixTheorem1( patient )
%createJacobainMatrix Summary of this function goes here
%   Detailed explanation goes here

    a1 = - (( k1*k7)/ (k8*N*ka)) - k2;
    a2 = 0;
    a3 = 0;
    a4 = 0;

    b1 = 0;
    b2 = -patient.k4;
    b3 = k3 * k7 / (k8*kd + k7);
    b4 = k3*k7*k8*kd / (N* (k8*kd+k7)^2);

    c1 = - ((k6*k7) / (k8*N));
    c2 = 0;
    c3 = - (k5*k8*N^2) / k7;
    c4 = k5*k8*N / k7;

    d1 = - (k7 / kb);
    d2 = 0;
    d3 = 0; 
    d4 = -patient.k8;

    matrix = [a1 a2 a3 a4;
        b1 b2 b3 b4;
        c1 c2 c3 c4;
        d1 d2 d3 d4]

end

