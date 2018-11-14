function [T,X] = Simulate(ISimulation)

t0 = 0;
tend = ISimulation.SimulationTime;

InitialValuesVector = [ ISimulation.InitialValues.x ISimulation.InitialValues.y ISimulation.InitialValues.z ISimulation.InitialValues.w];
PatientVector = ISimulation.Patient.getVector();
DoseVector = [ISimulation.Dose.grams ISimulation.Dose.days];

% matrix = createJacobainMatrix(ISimulation.Patient);

ukladVector = [InitialValuesVector PatientVector DoseVector];
[T,X] = ode45(@uklad_rownan,[t0 tend], ukladVector);

% Sygna� d�wiekowy ko�ca oblicze�
% load handel.mat;
% sound(y);

end

