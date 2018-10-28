function [T,X] = Run_plik_glowny()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
clc
clear all
close all

% load state
state = State(0,36,30,25, "Undefined patient");

% Czas symulacji [days?] 
t0 = 0;
tend = 5;

stateVector = state.getVector();

[T,X] = ode45(@uklad_rownan,[t0 tend], stateVector);

% Sygna³ dŸwiekowy koñca obliczeñ
% load handel.mat;
% sound(y);

end

