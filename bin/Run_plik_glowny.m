function [T,X,eigen] = Run_plik_glowny()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
clc
clear all
close all

% load state
state = State(10,36,30,25, "Undefined patient");

% Czas symulacji [days?] 
t0 = 0;
tend = 20;

stateVector = state.getVector();
patient = Patient(8.374*10^(-3), 3.3271, 0.358068, 0.119, 0.05, 0.099021, 10^6, 0.833,  0.001,  0.875,  1.5,  0.035, "Table 2 Patient");

theorem1_state = theorem1(patient);
matrix = createJacobainMatrix(patient, theorem1_state);
eigen = eig(matrix)

[T,X] = ode45(@uklad_rownan,[t0 tend], stateVector);

% Sygna³ dŸwiekowy koñca obliczeñ
% load handel.mat;
% sound(y);

end

