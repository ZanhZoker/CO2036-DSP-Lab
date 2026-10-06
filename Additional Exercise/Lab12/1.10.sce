clc;
clear;

Fs = 1000;      // Sampling frequency
n = 0:50;

// Sampled signal
x = 3*cos(2*%pi*300/Fs*n) ...
    + 2*cos(2*%pi*900/Fs*n);

// Equivalent signal after aliasing
x_alias = 3*cos(0.6*%pi*n) ...
          + 2*cos(0.2*%pi*n);

subplot(2,1,1);
plot(n, x, 'o-');
xtitle("Sampled signal x[n]", "n", "x[n]");
xgrid();

subplot(2,1,2);
plot(n, x_alias, 'o-');
xtitle("Equivalent signal after aliasing", "n", "x[n]");
xgrid();

// Quantization parameters
L = 1024;
Vmax = 5;
Vmin = -5;

Delta = (Vmax - Vmin)/(L - 1);

disp("Number of bits per sample:");
disp(log2(L));

disp("Sampling frequency (Hz):");
disp(Fs);

disp("Folding frequency (Hz):");
disp(Fs/2);

disp("Nyquist rate (Hz):");
disp(1800);

disp("Quantization resolution (V):");
disp(Delta);