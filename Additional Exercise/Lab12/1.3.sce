clear;
clc;

// ========================================
// ADDITIONAL EXERCISE 1.3
// ========================================

// ---------- (a) ----------
t = 0:0.01:5;
xa = 3*cos(5*t + %pi/6);

scf(1);
plot(t, xa);
title("Ex 1.3(a): xa(t) = 3cos(5t + pi/6)");
xlabel("t (s)");
ylabel("xa(t)");

T0 = 2*%pi/5;

disp("Ex 1.3(a)");
disp("Periodic");
disp("Fundamental period T0 =");
disp(T0);


// ---------- (b) ----------
n = 0:40;
xb = 3*cos(5*n + %pi/6);

scf(2);
plot2d3(n, xb);
title("Ex 1.3(b): x(n) = 3cos(5n + pi/6)");
xlabel("n");
ylabel("x(n)");

disp("Ex 1.3(b): Non-periodic");


// ---------- (c) ----------
xc = 2*exp(%i*(n/6 - %pi));

scf(3);

subplot(2,1,1);
plot2d3(n, real(xc));
title("Ex 1.3(c): Real part");
xlabel("n");
ylabel("Re{x(n)}");

subplot(2,1,2);
plot2d3(n, imag(xc));
title("Ex 1.3(c): Imaginary part");
xlabel("n");
ylabel("Im{x(n)}");

disp("Ex 1.3(c): Non-periodic");


// ---------- (d) ----------
xd = cos(n/8).*cos(%pi*n/8);

scf(4);
plot2d3(n, xd);
title("Ex 1.3(d)");
xlabel("n");
ylabel("x(n)");

disp("Ex 1.3(d): Non-periodic");


// ---------- (e) ----------
n = 0:31;

xe = cos(%pi*n/2) ...
   - sin(%pi*n/8) ...
   + 3*cos(%pi*n/4 + %pi/3);

scf(5);
plot2d3(n, xe);

title("Ex 1.3(e): Periodic Signal");
xlabel("n");
ylabel("x(n)");

disp("Ex 1.3(e)");
disp("Periodic");
disp("Fundamental period N0 = 16 samples");