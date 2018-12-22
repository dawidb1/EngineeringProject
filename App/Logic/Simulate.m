function SimulationResult = Simulate(ISimulation)
%% get data
SimulationResult = ISimulationResult;
t0 = 0;
tend = ISimulation.SimulationTime;
% tutaj muszê daæ simulation time wynikaj¹ce z vectora

InitialValuesVector = [ ISimulation.InitialValues.x ISimulation.InitialValues.y ISimulation.InitialValues.z ISimulation.InitialValues.w];
PatientVector = ISimulation.Patient.getVector();
DoseVector = [ISimulation.Dose.grams ISimulation.Dose.days];
%% differential equantion
% ukladVector = [InitialValuesVector PatientVector DoseVector];
% [T,X] = ode45(@uklad_rownan,[t0 tend], ukladVector);

[t, y] = ode45(@(t, y) uklad_rownan2(t, y, PatientVector, DoseVector), [t0 tend], InitialValuesVector);

X = y;
T = t;
% X = X(:,1:4);

%% stability analysis
matrix = JacobainMatrix(ISimulation.Patient, ISimulation.InitialValues);
eigenValues = eig(matrix);

%% stability points
% s = X(:,5);
points = stability_points(ISimulation.Patient);
% points = 0;

%% send data
SimulationResult.T = T;
SimulationResult.X = X;
SimulationResult.points = points;
SimulationResult.eigen = eigenValues;

%% find ft4 range
findFT4NormalRange(T,X);

%% sygna³ dŸwiêkowy koñca obliczeñ
% load handel.mat;
% sound(y);

end