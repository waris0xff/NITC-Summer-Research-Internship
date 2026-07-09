# Control Logic and State-Space Scripts

This directory contains the computational scripts used for plant initialization, State-Space Averaging (SSA), and control loop design.

## Script Overview
* `init_plant_parameters.m`: Loads all physical component specifications (L1, L2, C1-C4), load parameters, and the discrete PID controller coefficients ($k$, $a_1$, $a_2$, $a_3$) into the active workspace.
* `compute_Gvd_transfer_function.m`: Derives the 6th-order continuous-time control-to-output transfer function $G_{vd}(s)$ from the state-space matrices. Generates the Bode plots and Pole-Zero maps for stability analysis.

## Usage
Run these scripts directly in the MATLAB command window or editor before initiating the Simulink models to prevent variable initialization errors.
