function points = stability_points(patient, s)
%STABILITY_POINTS Summary of this function goes here
%   Detailed explanation goes here

syms x y z w

dx_dt = s - (patient.k1*z*x)/(patient.ka+x) - patient.k2*x;
dy_dt = (patient.k3*z)*w/(patient.kd+w) - patient.k4*y;
dz_dt = patient.k5*(w/z - patient.N) - patient.k6*z*x;
dw_dt = patient.k7 - patient.k7*x/(patient.kb+x) - patient.k8*w;

eqns = [dx_dt == 0, dy_dt == 0, dz_dt == 0, dw_dt ==0];
points = solve(eqns, [x y z w]);
end

