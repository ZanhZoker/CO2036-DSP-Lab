clc; clear;

function [yn, yorigin] = fold(xn, xorigin)

    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;

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
    xtitle("y(n) = x(-n)", "n", "Amplitude");

endfunction


// Test
[yn, yorigin] = fold([1 -2 3 6], 3);

disp("yn = ");
disp(yn);

disp("yorigin = ");
disp(yorigin);