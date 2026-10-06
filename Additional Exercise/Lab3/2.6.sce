clc;
clear;

n = -6:8;

// Original signal x(n)
x = bool2s((n >= 0) & (n <= 3));

//////////////////////////////////////////////////
// SYSTEM 1: y(n) = x(n^2)
//////////////////////////////////////////////////

y = bool2s((n.^2 >= 0) & (n.^2 <= 3));

// y'(n) = y(n-2)
ydelay = bool2s(((n-2).^2 >= 0) & ((n-2).^2 <= 3));

// x2(n) = x(n-2)
x2 = bool2s((n >= 2) & (n <= 5));

// y2(n) = T[x2(n)] = x2(n^2)
y2 = bool2s(((n.^2 - 2) >= 0) & ((n.^2 - 2) <= 3));

scf();

subplot(3,2,1);
plot2d3(n, x);
xtitle("x(n)");
xgrid();

subplot(3,2,2);
plot2d3(n, y);
xtitle("y(n) = x(n^2)");
xgrid();

subplot(3,2,3);
plot2d3(n, ydelay);
xtitle("y''(n) = y(n-2)");
xgrid();

subplot(3,2,4);
plot2d3(n, x2);
xtitle("x2(n) = x(n-2)");
xgrid();

subplot(3,2,5);
plot2d3(n, y2);
xtitle("y2(n) = T[x2(n)]");
xgrid();


//////////////////////////////////////////////////
// SYSTEM 2: y(n) = x(n) - x(n-1)
//////////////////////////////////////////////////

xn1 = bool2s(((n-1) >= 0) & ((n-1) <= 3));

y_diff = x - xn1;

// y(n-2)
x_n2 = bool2s(((n-2) >= 0) & ((n-2) <= 3));
x_n3 = bool2s(((n-3) >= 0) & ((n-3) <= 3));

ydelay_diff = x_n2 - x_n3;

// Output when delayed input passes through system
y2_diff = x_n2 - x_n3;

scf();

subplot(3,1,1);
plot2d3(n, y_diff);
xtitle("y(n) = x(n) - x(n-1)");
xgrid();

subplot(3,1,2);
plot2d3(n, ydelay_diff);
xtitle("y(n-2)");
xgrid();

subplot(3,1,3);
plot2d3(n, y2_diff);
xtitle("T[x(n-2)]");
xgrid();


//////////////////////////////////////////////////
// SYSTEM 3: y(n) = n*x(n)
//////////////////////////////////////////////////

y_nx = n .* x;

// y(n-2)
ydelay_nx = (n-2) .* x2;

// T[x(n-2)]
y2_nx = n .* x2;

scf();

subplot(3,1,1);
plot2d3(n, y_nx);
xtitle("y(n) = n*x(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, ydelay_nx);
xtitle("y(n-2)");
xgrid();

subplot(3,1,3);
plot2d3(n, y2_nx);
xtitle("T[x(n-2)]");
xgrid();
