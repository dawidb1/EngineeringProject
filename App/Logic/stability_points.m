function points = stability_points(patient)
%STABILITY_POINTS Summary of this function goes here
%   Detailed explanation goes here

syms x y z w

s = 0;
dx_dt = s - (patient.k1*z*x)/(patient.ka+x) - patient.k2*x;
dy_dt = (patient.k3*z)*w/(patient.kd+w) - patient.k4*y;
dz_dt = patient.k5*(w/z - patient.N) - patient.k6*z*x;
dw_dt = patient.k7 - patient.k7*x/(patient.kb+x) - patient.k8*w;

% eqns = [dx_dt == 0, dy_dt == 0, dz_dt == 0, dw_dt ==0];
eqns = [s - (patient.k1*z*x)/(patient.ka+x) - patient.k2*x == 0, (patient.k3*z)*w/(patient.kd+w) - patient.k4*y == 0, patient.k5*(w/z - patient.N) - patient.k6*z*x == 0, patient.k7 - patient.k7*x/(patient.kb+x) - patient.k8*w ==0];

points = solve(eqns, [x y z w]);

if s == 0    
    px = vpa(points.x(5),4);
    py = vpa(points.y(5),4);
    pz = vpa(points.z(5),4);
    pw = vpa(points.w(5),4);
else 
    px = vpa(points.x,4)
    py = vpa(points.y,4)
    pz = vpa(points.z,4)
    pw = vpa(points.w,4)
% points.x
% points.y
% points.z
% points.w
end
points = Points(px, py, pz, pw);

end

