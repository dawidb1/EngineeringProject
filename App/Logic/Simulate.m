function [T,X] = Simulate(ISimulation)

t0 = 0;
tend = ISimulation.SimulationTime;

InitialValuesVector = [ ISimulation.InitialValues.x ISimulation.InitialValues.y ISimulation.InitialValues.z ISimulation.InitialValues.w];
PatientVector = ISimulation.Patient.getVector();
DoseVector = [ISimulation.Dose.grams ISimulation.Dose.days];
% theorem1_state = theorem1(patient);
matrix = createJacobainMatrix(ISimulation.Patient);

% xFunc = matrix(1,:);
% yFunc = matrix(2,:);
% zFunc = matrix(3,:);
% wFunc = matrix(4,:);
% 
% syms x y z w
% xPoint = xFunc == 0;
% yPoint = yFunc == 0;
% zPoint = zFunc == 0;
% wPoint = wFunc == 0;
% 
% xSol = solve(xPoint)
% ySol = solve(yPoint)
% zSol = solve(zPoint)
% wSol = solve(wPoint)
syms x y w z
zeros = [0;0;0;0];
X = linsolve(matrix,zeros)
% syms x y w z


% eigen = eig(matrix)


ukladVector = [InitialValuesVector PatientVector DoseVector]
[T,X] = ode45(@uklad_rownan,[t0 tend], ukladVector);

% Sygna� d�wiekowy ko�ca oblicze�
% load handel.mat;
% sound(y);

end

