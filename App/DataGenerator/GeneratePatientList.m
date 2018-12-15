function PatientList = GeneratePatientList()
    DefaultPatient = Patient(8.374*10^(-3), 3.3271, 0.358068, 0.119, 0.05, 0.099021, 10^6, 0.833,  0.001,  0.875,  1.5,  0.035, 'Default Patient');
    Patient1 = Patient(8.374*10^(-3), 3.3271, 0.358068, 0.085, 0.067, 0.099021, 10^6, 0.250, 0.001, 0.26, 4.95, 0.035, 'Patient #20');
    Patient2 = Patient(8.374*10^(-3), 3.3271, 0.358068, 0.08975, 0.07, 0.099021, 10^6, 0.058, 0.001, 0.61, 11.8, 0.035, 'Patient #31');
    Patient3 = Patient(8.374*10^(-3), 3.3271, 0.358068, 0.08992, 0.081, 0.099021, 10^6, 0.207, 0.001, 0.22, 4.09, 0.035, 'Patient #55');
    Patient4 = Patient(8.374*10^(-3), 3.3271, 0.358068, 0.11784, 0.075, 0.099021, 10^6, 0.293, 0.001, 0.308, 3.15, 0.035, 'Patient #70');
    PatientList = [DefaultPatient, Patient1, Patient2, Patient3, Patient4];

    save PatientList.mat PatientList
end