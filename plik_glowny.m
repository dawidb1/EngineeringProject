clc
clear all
close all

% load state
state = State(30,36,30,25,0, "Untreated hypothetical patient");

% load patient
patientList = PatientList();
patient = patientList.list(1);

% Czas symulacji [days?] 
t0 = 0;
tend = 25;

x = [ state.getVector() patient.getVector()];

% Symulacja dla osoby zdrowej po spożyciu posiłku 
[T,X] = ode45(@uklad_rownan,[t0 tend], x);
% Wykresy 

plot(T,X(:,1),'r');
title(state.label);
hold on;
plot(T,X(:,2),'b');
hold on;
plot(T,X(:,3),'g');
hold on;
plot(T,X(:,4),'m');
legend('MMI','FT4','Thyroid Size','TRAb')

xlabel('Time (in days)');
grid;