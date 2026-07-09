% Transfer Function and Frequency Analysis for SCZEBC Type-2
clear all;
clc;

% Define the Laplace variable
s = tf('s');

% Gvd(s) Numerator Coefficients
a6 = -0.02169;
a5 = -3134;
a4 = -1.327e8;
a3 = -1.139e12;
a2 = 1.719e16;
a1 = -6.152e18;
a0 = 5.909e23;

% Gvd(s) Denominator Coefficients
b6 = 1;
b5 = 1.433e5;
b4 = 3.567e9;
b3 = 7.085e12;
b2 = 8.82e16;
b1 = 5.147e19;
b0 = 5.611e22;

% Construct the Plant Transfer Function Gvd(s)
num_Gvd = [a6 a5 a4 a3 a2 a1 a0];
den_Gvd = [b6 b5 b4 b3 b2 b1 b0];
Gvd = tf(num_Gvd, den_Gvd);

% Construct the Voltage-Mode PID Controller Gc(s)
k = 0.6715;
a1_c = 6440;
a2_c = 553;
a3_c = 77920;
Gc = (k * (s + a1_c) * (s + a2_c)) / (s * (s + a3_c));

% Plotting 
figure(1);
bode(Gvd);
title('Bode Diagram of Uncompensated SCZEBC Type-2 Plant');
grid on;

figure(2);
pzmap(Gvd);
title('Pole-Zero Map of SCZEBC Type-2 Plant');
grid on;

disp('Transfer functions Gvd(s) and Gc(s) generated.');