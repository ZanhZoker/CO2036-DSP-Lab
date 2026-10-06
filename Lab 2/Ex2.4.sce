// ====================
// EXERCISE 4
// ====================

n = -5:5;

ur = n .* bool2s(n >= 0);

scf(5);
plot2d3(n, ur);

title("Unit Ramp Signal");
xlabel("n");
ylabel("ur(n)");
