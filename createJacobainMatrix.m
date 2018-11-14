function matrix = createJacobainMatrix( patient, state )
%createJacobainMatrix Summary of this function goes here
%   Detailed explanation goes here
    state.x = state.MMI;
    state.y = state.FT4;
    state.z = state.Thyroid_Size;
    state.w = state.TRAb;

    a1 = -(patient.k1*patient.ka*state.z + patient.k2*(state.x+patient.ka)^2)/(state.x+patient.ka);
    a2 = 0;
    a3 = -state.x*patient.k1/(state.x+patient.ka);
    a4 = 0;

    b1 = 0;
    b2 = -patient.k4;
    b3 = state.w*patient.k3 / (state.w + patient.kd);
    b4 = state.z*patient.k3*patient.kd/(state.w+patient.kd)^2;

    c1 = -state.z*patient.k6;
    c2 = 0;
    c3 = -state.w*patient.k5/state.z^2 - state.x*patient.k6;
    c4 = patient.k5/state.z;

    d1 = -patient.k7 * patient.kb /(state.x+patient.kb)^2;
    d2 = 0;
    d3 = 0; 
    d4 = -patient.k8;

    matrix = [a1 a2 a3 a4;
        b1 b2 b3 b4;
        c1 c2 c3 c4;
        d1 d2 d3 d4]

end

