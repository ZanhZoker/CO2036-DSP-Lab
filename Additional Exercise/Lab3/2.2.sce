clc; clear;

x = [1 1 1 1 0.5 0.5];

na = 1:6;
ya = x;

nb = 0:5;
yb = [0.5 0.5 1 1 1 1];

nc = -3:2;
yc = x;

nd = -1:2;
yd = [1 1 1 1];

ne = 3;
ye = 1;

nf = -2:2;
yf = [0.5 1 1 1 0.5];

ng = -4:4;
xe = [0.25 0.25 0.5 1 1 1 0.5 0.25 0.25];
xo = [-0.25 -0.25 -0.5 0 0 0 0.5 0.25 0.25];

scf(); clf();

subplot(4,2,1);
plot2d3(na, ya);
replot([min(na)-1, min([ya 0])-1, max(na)+1, max([ya 0])+1]);
xtitle("(a) x(n-2)", "n", "Amplitude");

subplot(4,2,2);
plot2d3(nb, yb);
replot([min(nb)-1, min([yb 0])-1, max(nb)+1, max([yb 0])+1]);
xtitle("(b) x(4-n)", "n", "Amplitude");

subplot(4,2,3);
plot2d3(nc, yc);
replot([min(nc)-1, min([yc 0])-1, max(nc)+1, max([yc 0])+1]);
xtitle("(c) x(n+2)", "n", "Amplitude");

subplot(4,2,4);
plot2d3(nd, yd);
replot([min(nd)-1, min([yd 0])-1, max(nd)+1, max([yd 0])+1]);
xtitle("(d) x(n)u(2-n)", "n", "Amplitude");

subplot(4,2,5);
plot2d3(ne, ye);
replot([ne-1, min([ye 0])-1, ne+1, max([ye 0])+1]);
xtitle("(e) x(n-1)delta(n-3)", "n", "Amplitude");

subplot(4,2,6);
plot2d3(nf, yf);
replot([min(nf)-1, min([yf 0])-1, max(nf)+1, max([yf 0])+1]);
xtitle("(f) x(n^2)", "n", "Amplitude");

subplot(4,2,7);
plot2d3(ng, xe);
replot([min(ng)-1, min([xe 0])-1, max(ng)+1, max([xe 0])+1]);
xtitle("(g) Even part", "n", "Amplitude");

subplot(4,2,8);
plot2d3(ng, xo);
replot([min(ng)-1, min([xo 0])-1, max(ng)+1, max([xo 0])+1]);
xtitle("(h) Odd part", "n", "Amplitude");

disp("Even part = ");
disp(xe);

disp("Odd part = ");
disp(xo);