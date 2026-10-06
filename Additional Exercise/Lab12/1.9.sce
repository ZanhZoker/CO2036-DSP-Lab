clc;
clear;

Fs = 600;       // Sampling frequency
n = 0:30;

// Sampled signal
x = sin(480*%pi/Fs*n) ...
    + 3*sin(720*%pi/Fs*n);

// Equivalent aliased signal
x_alias = -2*sin(4*%pi/5*n);

subplot(2,1,1);
plot(n, x, 'o-');
xtitle("Sampled signal x[n]", "n", "x[n]");
xgrid();

subplot(2,1,2);
plot(n, x_alias, 'o-');
xtitle("Equivalent signal after aliasing", "n", "x[n]");
xgrid();