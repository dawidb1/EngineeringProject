function [T,X] = Simulate(ISimulation)

t0 = 0;
tend = ISimulation.Dose.days;

InitialValuesVector = [ ISimulation.InitialValues.x ISimulation.InitialValues.y ISimulation.InitialValues.z ISimulation.InitialValues.w];
PatientVector = ISimulation.Patient.getVector();
DoseVector = [ISimulation.Dose.grams ISimulation.Dose.days];
% theorem1_state = theorem1(patient);
% matrix = createJacobainMatrix(patient, theorem1_state);
% eigen = eig(matrix)


ukladVector = [InitialValuesVector PatientVector DoseVector];
[T,X] = ode45(@uklad_rownan,[t0 tend], ukladVector);

% Sygna³ dŸwiekowy koñca obliczeñ
% load handel.mat;
% sound(y);

end

