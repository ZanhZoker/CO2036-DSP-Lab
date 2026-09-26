clear;
clc;

// ====================
// EXERCISE 1
// ====================

n = -5:5;
x = n.^2;

// plot2d3
scf(1);
plot2d3(n, x);
title("Example of plot2d3");
xlabel("n");
ylabel("x(n)");

// min and max
disp("Minimum value:");
disp(min(x));

disp("Maximum value:");
disp(max(x));

// subplot
scf(2);

subplot(2,1,1);
plot2d3(n, x);
title("First subplot");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n, -x);
title("Second subplot");
xlabel("n");
ylabel("-x(n)");

// bool2s
b = bool2s(n >= 0);
disp("bool2s result:");
disp(b);

// deff
deff("y=f(x)", "y=x.^2");
disp("f(3) = ");
disp(f(3));
