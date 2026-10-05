clc;
clear;

F = 5000;       // 5 kHz

// Sampling frequency: 8 kHz
Fs1 = 8000;
n1 = 0:40;
x1 = sin(2*%pi*F/Fs1*n1);

// 5 kHz aliases to 3 kHz
xalias1 = -sin(2*%pi*3000/Fs1*n1);


// Sampling frequency: 9 kHz
Fs2 = 9000;
n2 = 0:40;
x2 = sin(2*%pi*F/Fs2*n2);

// 5 kHz aliases to 4 kHz
xalias2 = -sin(2*%pi*4000/Fs2*n2);

subplot(2,1,1);
plot(n1, x1, 'o-');
xtitle("Fs = 8 kHz: 5 kHz aliases to 3 kHz", ...
       "n", "x[n]");
xgrid();

subplot(2,1,2);
plot(n2, x2, 'o-');
xtitle("Fs = 9 kHz: 5 kHz aliases to 4 kHz", ...
       "n", "x[n]");
xgrid();