// ====================
// EXERCISE 5
// ====================

n = -1:1;

x = [1 3 -2];

// x(-n)
x_neg = x($:-1:1);

// Even component
xe = (x + x_neg) / 2;

// Odd component
xo = (x - x_neg) / 2;


// Display results
disp("x(n):");
disp(x);

disp("xe(n):");
disp(xe);

disp("xo(n):");
disp(xo);


// Draw all signals in ONE window
scf(6);

subplot(3,1,1);
plot2d3(n, x);
title("Original Signal x(n)");
xlabel("n");
ylabel("x(n)");

subplot(3,1,2);
plot2d3(n, xe);
title("Even Component xe(n)");
xlabel("n");
ylabel("xe(n)");

subplot(3,1,3);
plot2d3(n, xo);
title("Odd Component xo(n)");
xlabel("n");
ylabel("xo(n)");
