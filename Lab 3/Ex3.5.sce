clc;
clear;

function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)

    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;

    nmin = min([n1 n2]);
    nmax = max([n1 n2]);
    n = nmin:nmax;

    x1 = zeros(1, length(n));
    x2 = zeros(1, length(n));

    x1(n1 - nmin + 1) = x1n;
    x2(n2 - nmin + 1) = x2n;

    yn = x1 .* x2;
    yorigin = 1 - nmin;

    scf(); clf();

    subplot(3,1,1);
    plot2d3(n, x1);
    replot([min(n)-1, min([x1 0])-1, max(n)+1, max([x1 0])+1]);
    xtitle("x1(n)", "n", "Amplitude");

    subplot(3,1,2);
    plot2d3(n, x2);
    replot([min(n)-1, min([x2 0])-1, max(n)+1, max([x2 0])+1]);
    xtitle("x2(n)", "n", "Amplitude");

    subplot(3,1,3);
    plot2d3(n, yn);
    replot([min(n)-1, min([yn 0])-1, max(n)+1, max([yn 0])+1]);
    xtitle("y(n) = x1(n)x2(n)", "n", "Amplitude");

endfunction


// Test
[yn, yorigin] = multi([0 1 3 -2], 1, [1 1 2 3], 2);

disp("yn = ");
disp(yn);

disp("yorigin = ");
disp(yorigin);