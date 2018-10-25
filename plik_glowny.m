clc
clear all
close all

% load state
state = State(10,36,30,25, "Untreated hypothetical patient");

% Czas symulacji [days?] 
t0 = 0;
tend = 10;

stateVector = state.getVector();

[T,X] = ode45(@uklad_rownan,[t0 tend], stateVector);
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

load handel.mat;
sound(y);