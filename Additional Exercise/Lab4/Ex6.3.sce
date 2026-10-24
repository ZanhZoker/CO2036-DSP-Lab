clc;
clear;

x = [1 2 -3 2 1];
h = [1 0 -1];
y = convol(x, h);

nx = 0:length(x)-1;
ny = 0:length(y)-1;

Ex = cumsum(x.^2);
Ey = cumsum(y.^2);

disp(sum(x.^2), "Energy of x:");
disp(sum(y.^2), "Energy of y:");

clf();

subplot(2,2,1);
plot2d3(nx, x);
xtitle("Input x(n)", "n", "x(n)");

subplot(2,2,2);
plot2d3(ny, y);
xtitle("Output y(n)", "n", "y(n)");

subplot(2,2,3);
plot2d3(nx, Ex);
xtitle("Cumulative Energy of x", "n", "Energy");

subplot(2,2,4);
plot2d3(ny, Ey);
xtitle("Cumulative Energy of y", "n", "Energy");