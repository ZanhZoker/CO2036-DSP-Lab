clc;
clear;

// Original signal
n = -2:1;
x = [1 -2 3 6];


// (a) y1(n) = x(-n)
n1 = -n($:-1:1);
y1 = x($:-1:1);

scf(0);
clf;

subplot(2,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n1, y1);
title("y1(n) = x(-n)");
xlabel("n");
ylabel("Amplitude");


// (b) y2(n) = x(n + 3)
n2 = n - 3;
y2 = x;

scf(1);
clf;

subplot(2,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n2, y2);
title("y2(n) = x(n + 3)");
xlabel("n");
ylabel("Amplitude");


// (c) y3(n) = 2x(-n - 2)
n3 = -n - 2;
y3 = 2*x;

[n3s, idx] = gsort(n3, "g", "i");
y3s = y3(idx);

scf(2);
clf;

subplot(2,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n3s, y3s);
title("y3(n) = 2x(-n - 2)");
xlabel("n");
ylabel("Amplitude");