clc; clear;
function [yn, yorigin] = delay(xn, xorigin, k)

    yn = xn;
    yorigin = xorigin - k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    scf(); clf();

    subplot(2,1,1);
    plot2d3(nx, xn);
    replot([min(nx)-1, min([xn 0])-1, max(nx)+1, max([xn 0])+1]);
    xtitle("x(n)", "n", "Amplitude");

    subplot(2,1,2);
    plot2d3(ny, yn);
    replot([min(ny)-1, min([yn 0])-1, max(ny)+1, max([yn 0])+1]);
    xtitle("y(n) = x(n-k)", "n", "Amplitude");

endfunction

// Test
[yn, yorigin] = delay([1 -2 3 6], 3, 1);     // x(n) = [1 -2 3 6]  xorigin=3   k=1

disp("yn = ");
disp(yn);

disp("yorigin = ");
disp(yorigin);