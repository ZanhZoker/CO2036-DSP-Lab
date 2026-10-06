function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)

    // Index ranges of x1(n) and x2(n)
    n1 = (1 - x1origin):(length(x1n) - x1origin);
    n2 = (1 - x2origin):(length(x2n) - x2origin);

    // Common index range
    nmin = min([n1(1), n2(1)]);
    nmax = max([n1($), n2($)]);
    n = nmin:nmax;

    // Extend both signals with zeros
    x1 = zeros(1, length(n));
    x2 = zeros(1, length(n));

    x1(n1 - nmin + 1) = x1n;
    x2(n2 - nmin + 1) = x2n;

    // Addition
    yn = x1 + x2;

    // Position of n = 0
    yorigin = 1 - nmin;

    // Plot
    scf();

    subplot(3,1,1);
    plot2d3(n, x1);
    xtitle("x1(n)", "n", "Amplitude");
    xgrid();

    subplot(3,1,2);
    plot2d3(n, x2);
    xtitle("x2(n)", "n", "Amplitude");
    xgrid();

    subplot(3,1,3);
    plot2d3(n, yn);
    xtitle("y(n) = x1(n) + x2(n)", "n", "Amplitude");
    xgrid();

endfunction
[yn, yorigin] = add([0, 1, 3, -2], 1, [1, 1, 2, 3], 2)
