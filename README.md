# NITC-Summer-Research-Internship

## Overview
This repository contains the computational models, state-space analysis, and closed-loop control algorithms developed during my Summer Research Internship at the **National Institute of Technology (NIT) Calicut**, Department of Electrical Engineering[cite: 2]. 

The project focuses on the modeling and simulation of a Switched-Capacitor-based Z-source Equivalent DC-DC Boost Converter (SCZEBC) Type-2 topology[cite: 2]. The architecture utilizes a shifted L-C-D cell and a charge-pump cell to achieve extreme voltage gain at moderate duty cycles, overcoming the severe parasitic losses of traditional high-gain converters[cite: 2].

## ⚙️ Technical Specifications & Physical Plant
The physical plant was modeled in MATLAB/Simulink (Simscape Electrical) to validate a 100-W hardware prototype[cite: 2]:
* **Input Voltage:** 48 V DC[cite: 2]
* **Regulated Output:** 220 V DC[cite: 2]
* **Switching Frequency:** 50 kHz[cite: 2]
* **Passive Components:** Inductors L1, L2 = 1.4 mH | Capacitors C1, C3 = 20 µF, C2, C4 = 40 µF[cite: 2]
* **Load:** 484 Ω (drawing exactly 100 W)[cite: 2]

## 🛠️ Control Architecture & Numerical Solvers
Validating a 6th-order, non-minimum phase physical plant exhibiting Right-Half-Plane (RHP) zeros required robust control logic and specialized numerical solvers[cite: 2]:
1. **Voltage-Mode PID Compensator:** Designed a continuous-time closed-loop controller (k=0.6715, a1=6440, a2=553, a3=77920) targeting a modulus margin between 0.5–0.75 for optimal transient recovery[cite: 2].
2. **Anti-Windup Logic:** Implemented rigid saturation blocks (clamped between 0 and 0.45) to enforce topological constraints (D < 0.5) and prevent integral windup during severe large-signal disturbances[cite: 2].
3. **Stiff Solver Configuration:** Overcame severe numerical instability in the high-frequency switched-capacitor network by utilizing MATLAB's **ode23tb (Stiff/TR-BDF2)** solver with a strict 1e-3 relative tolerance[cite: 2].

## 📂 Repository Structure
* `/Simulink_Models`: Contains the `.slx` files for both steady-state regulation and dynamic line disturbance simulations.
* `/MATLAB_Scripts`: Contains the `.m` scripts used for State-Space Averaging (SSA) and generating the control-to-output transfer function coefficients.
* `/Documentation`: Contains the full technical internship report and official completion certificate.

## 📊 Performance Validation
The closed-loop system successfully regulates the 220V output and exhibits exceptional transient robustness[cite: 2]. Under simulation, the plant successfully recovers from a severe input line disturbance (42V to 54V step) with a highly damped settling time of approximately 20 milliseconds, directly mirroring the hardware experimental results[cite: 2].
