// ====================
// EXERCISE 3
// ====================

n = -5:5;

msignal = bool2s(n == 0);

scf(4);
plot2d3(n, msignal);

title("Unit Impulse Signal delta(n)");
xlabel("n");
ylabel("delta(n)");
