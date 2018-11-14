function state = theorem1( patient )
%theorem1 No treatment, hyperthyroid state, MMI = 0
%   Detailed explanation goes here

x1 = 0;
y1 = patient.k3*patient.k7^2/ (patient.k4*patient.k8*patient.N* (patient.k8*patient.kd + patient.k7));
z1 = patient.k7 / (patient.k8*patient.N);
w1 = patient.k7 / patient.k8;

state = State(x1, y1, z1, w1);

end

