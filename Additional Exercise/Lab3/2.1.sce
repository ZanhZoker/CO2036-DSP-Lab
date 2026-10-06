clc; clear;

n = -3:3;
x = [0 1/3 2/3 1 1 1 1];

n1 = 1:7;
y1 = x($:-1:1);

n2 = -7:-1;
y2 = x($:-1:1);

scf(); clf();

subplot(3,1,1);
plot2d3(n, x);
replot([min(n)-1, min([x 0])-1, max(n)+1, max([x 0])+1]);
xtitle("x(n)", "n", "Amplitude");

subplot(3,1,2);
plot2d3(n1, y1);
replot([min(n1)-1, min([y1 0])-1, max(n1)+1, max([y1 0])+1]);
xtitle("Fold then delay 4: x(4-n)", "n", "Amplitude");

subplot(3,1,3);
plot2d3(n2, y2);
replot([min(n2)-1, min([y2 0])-1, max(n2)+1, max([y2 0])+1]);
xtitle("Delay 4 then fold: x(-n-4)", "n", "Amplitude");

disp("x(n) = ");
disp(x);

disp("Fold then delay 4 = ");
disp(y1);

disp("Delay 4 then fold = ");
disp(y2);