clc
clear all
close all

% load state
state = State(0,36,30,25, "Undefined patient");

% Czas symulacji [days?] 
t0 = 0;
tend = 25;

stateVector = state.getVector();

[T,X] = ode45(@uklad_rownan,[t0 tend], stateVector);
% Wykresy 
show_simulation(T,X);
figure;
show_stability(X);

% Sygna³ dŸwiekowy koñca obliczeñ
load handel.mat;
sound(y);