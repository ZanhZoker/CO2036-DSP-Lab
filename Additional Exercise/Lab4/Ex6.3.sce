clc;
clear;

x = [1 2 -3 2 1];
h = [1 0 -1];

y = convol(x, h);

nx = 0:length(x)-1;
ny = 0:length(y)-1;

Ex = x.^2;
Ey = y.^2;

disp(y, "Convolution Result:");
disp(sum(Ex), "Total Energy of x:");
disp(sum(Ey), "Total Energy of y:");

subplot(2,2,1);
plot2d3(nx, x);
xtitle("Input x(n)", "n", "x(n)");
a = gca();
a.data_bounds = [-1,-4;5,3];

subplot(2,2,2);
plot2d3(ny, y);
xtitle("Output y(n)", "n", "y(n)");
a = gca();
a.data_bounds = [-1,-5;7,5];

subplot(2,2,3);
plot2d3(nx, Ex);
xtitle("Energy per Sample of x(n)", "n", "|x(n)|^2");
a = gca();
a.data_bounds = [-1,0;5,11];

subplot(2,2,4);
plot2d3(ny, Ey);
xtitle("Energy per Sample of y(n)", "n", "|y(n)|^2");
a = gca();
a.data_bounds = [-1,0;7,19];
exit;