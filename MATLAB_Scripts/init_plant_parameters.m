% Initialization Script for SCZEBC Type-2 Topology

clear all;
clc;

% --- Input & Output Specifications ---
Vg = 48;            % Nominal input voltage (V)
Vo_ref = 220;       % Target regulated output voltage (V)
P0 = 100;           % Output power rating (W)
fs = 50e3;          % Switching frequency (50 kHz)
D_nom = 0.31;       % Theoretical steady-state duty ratio

% --- Passive Components Sizing ---
L1 = 1.4e-3;        % Inductor L1 (1.4 mH)
L2 = 1.4e-3;        % Inductor L2 (1.4 mH)
C1 = 20e-6;         % Charge-pump Capacitor C1 (20 uF)
C3 = 20e-6;         % Charge-pump Capacitor C3 (20 uF)
C2 = 40e-6;         % L-C-D cell Capacitor C2 (40 uF)
C4 = 40e-6;         % L-C-D cell Capacitor C4 (40 uF)
R_load = 484;       % Load resistance for 100W at 220V (Ohms)

% --- Closed-Loop PID Controller Coefficients ---
k = 0.6715;         % Controller gain
a1 = 6440;          % First zero location
a2 = 553;           % Second zero location
a3 = 77920;         % Second pole location

disp('Plant parameters and controller coefficients successfully loaded.');