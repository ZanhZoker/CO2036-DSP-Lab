n1 = 0:3;
x1 = [0 1 3 -2];

n2 = -1:2;
x2 = [0 1 2 3];

// Common index n
nmin = min(min(n1), min(n2));
nmax = max(max(n1), max(n2));
n = nmin:nmax;

X1 = zeros(1, length(n));
X2 = zeros(1, length(n));

X1(n1 - nmin + 1) = x1;
X2(n2 - nmin + 1) = x2;

y = X1 .* X2;

scf(0); clf;

subplot(3,1,1);
plot2d3(n, X1);
title("x1(n)");
xlabel("n"); ylabel("Amplitude");

subplot(3,1,2);
plot2d3(n, X2);
title("x2(n)");
xlabel("n"); ylabel("Amplitude");

subplot(3,1,3);
plot2d3(n, y);
title("y(n) = x1(n) .* x2(n)");
xlabel("n"); ylabel("Amplitude");