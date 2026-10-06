function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)

    // Convolution
    yn = convol(xn, hn);

    // Origin of output signal
    yorigin = xorigin + horigin - 1;

    // Index ranges
    nx = (1 - xorigin):(length(xn) - xorigin);
    nh = (1 - horigin):(length(hn) - horigin);
    ny = (1 - yorigin):(length(yn) - yorigin);

    // Plot
    scf();

    subplot(3,1,1);
    plot2d3(nx, xn);
    xtitle("x(n)", "n", "Amplitude");
    xgrid();

    subplot(3,1,2);
    plot2d3(nh, hn);
    xtitle("h(n)", "n", "Amplitude");
    xgrid();

    subplot(3,1,3);
    plot2d3(ny, yn);
    xtitle("y(n) = x(n) * h(n)", "n", "Amplitude");
    xgrid();

endfunction
[yn, yorigin] = convolution([1, 2, 1], 2, [1, 1], 1)
