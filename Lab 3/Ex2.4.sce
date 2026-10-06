clc;
clear;

n = -2:2;

x = [2 3 4 5 6];

// x(-n)
x_reverse = x(length(x):-1:1);

// Even and odd components
xe = (x + x_reverse) / 2;
xo = (x - x_reverse) / 2;

disp(xe);
disp(xo);

scf();

subplot(3,1,1);
plot2d3(n, x);
xtitle("Original signal x(n)", "n", "Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n, xe);
xtitle("Even component xe(n)", "n", "Amplitude");
xgrid();

subplot(3,1,3);
plot2d3(n, xo);
xtitle("Odd component xo(n)", "n", "Amplitude");
xgrid();
