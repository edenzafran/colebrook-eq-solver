%{
solves colebrook equation
used for MAE103 @ UCLA W21

Eden Zafran 
3/16/21
%}
clc; clear all; close all;

%% input values NOTE: make sure units match!
% roughness of surface (0 for smooth pipe)
e = 0.0005;
% diameter of pipe
D = 8/12;
% Reynolds number
Re = 2.19E5;

%% solve for friction factor f
% first guess b/c ~middle of Moody chart
f = 0.02;

% converge
f0 = f;
errorLimit = 1e-6;
while (abs(f-f0) > errorLimit)
    f = (-2.0*log10( ( (e/D)/3.7) + (2.51/(Re*sqrt(f)) ) ))^-2; 
end
%% output
fprintf("f = %f\n", f);
