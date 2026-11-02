
clc;
clear;
clf;

// Exercise 7: Circular Convolution

// ========================================
// 1. Define discrete-time signals
// ========================================
x = [1 2 -3 2 1];
h = [1 0 -1 -1 1];

N = length(x);
M = length(h);

n = 0:N-1;

// ========================================
// 2. Folding and Shifting Method
// ========================================

// Circular folding of h(n)
h_fold = zeros(1, N);

for k = 0:N-1
    idx = modulo(N-k, N) + 1;
    h_fold(k+1) = h(idx);
end

// Circular shifting and multiplication
y_fold = zeros(1, N);

for i = 0:N-1
    shifted = zeros(1, N);

    for k = 0:N-1
        idx = modulo(k-i+N, N) + 1;
        shifted(k+1) = h_fold(idx);
    end

    y_fold(i+1) = sum(x .* shifted);
end

// ========================================
// 3. Matrix Method
// ========================================

// Construct circulant matrix H
H = zeros(N, N);

for i = 0:N-1
    for j = 0:N-1
        idx = modulo(i-j+N, N) + 1;
        H(i+1, j+1) = h(idx);
    end
end

// Matrix multiplication
y_matrix = (H * x')';

// ========================================
// 4. Display and compare results
// ========================================

disp("Input x(n):");
disp(x);

disp("Impulse response h(n):");
disp(h);

disp("Circular folded h(n):");
disp(h_fold);

disp("Folding and Shifting result:");
disp(y_fold);

disp("Circulant Matrix H:");
disp(H);

disp("Matrix Method result:");
disp(y_matrix);

// Verify both methods
if max(abs(y_fold - y_matrix)) < 1e-10 then
    disp("SUCCESS: Both methods match!");
else
    disp("ERROR: Results do not match!");
end

// ========================================
// 5. Calculate signal energy
// ========================================

energy_x = x.^2;
energy_y = y_fold.^2;

Ex = sum(energy_x);
Ey = sum(energy_y);

mprintf("Energy of x(n) = %g\n", Ex);
mprintf("Energy of y(n) = %g\n", Ey);

// ========================================
// 6. Plot all signals in one figure
// ========================================

scf(0);
clf;

// Plot 1: Input signal
subplot(2,2,1);
plot2d3(n', x');
xtitle("Input Signal x(n)", "n", "Amplitude");


// Plot 2: Output signal
subplot(2,2,2);
plot2d3(n', y_fold');
xtitle("Circular Convolution y(n)", "n", "Amplitude");


// Plot 3: Input energy
subplot(2,2,3);
plot2d3(n', energy_x');
xtitle("Energy of x(n) - Total = 19", "n", "Energy");


// Plot 4: Output energy
subplot(2,2,4);
plot2d3(n', energy_y');
xtitle("Energy of y(n) - Total = 50", "n", "Energy");


disp("Exercise 7 completed!");
