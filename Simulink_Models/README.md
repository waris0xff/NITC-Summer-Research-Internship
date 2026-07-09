# Simulink Models: SCZEBC Type-2 

This directory contains the primary simulation files used to validate the physical plant and the closed-loop control logic of the SCZEBC topology.

## Model Files
* `SCZEBC_Type2_SteadyState.slx`: Simulates the converter under nominal operating conditions (48V DC input to 220V DC output feeding a 100W load). Used to verify steady-state continuous conduction mode (CCM) and voltage ripple metrics.
* `SCZEBC_Type2_DynamicDisturbance.slx`: Incorporates a dynamic Step block to simulate a severe line voltage disturbance (42V to 54V). Used to validate the transient recovery and settling time of the Voltage-Mode PID compensator.

## Execution Requirements
Before running either `.slx` file, you must initialize the workspace parameters. Run the `init_plant_parameters.m` script located in the `/MATLAB_Scripts` directory to load the component values, switching frequency, and controller gains into the MATLAB workspace. 

*Note: The models utilize the ode23tb (Stiff/TR-BDF2) solver due to the high-frequency switching and non-linear capacitor states.*
