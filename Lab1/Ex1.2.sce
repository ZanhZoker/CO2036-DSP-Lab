// 1.2
clf();
subplot(3,1,1)
t = linspace(0,0.1,500);
xa = 3*sin(100*%pi*t);
plot(t, xa, style = 1)
title("Analog signal xa(t)")
legend(["xa(t)"])

// xa(t) = 3*sin(100*pi*t) = 3*sin(2*pi*50*t)
// f0 = 50 Hz
// T0 = 0.02 s

// Discrete-time signal
Fs = 300;
Ts = 1/Fs;

// x(n) = 3*sin(pi*n/3)
// normalized frequency = 1/6
// fundamental period N0 = 6

subplot(3,1,2)
n = 0:29; // 5 periods
xn = 3*sin(%pi*n/3);
xn(abs(xn) < 1e-10) = 0;
plot2d3(n, xn)
title("Sampled signal x(n)")
legend(["x(n)"])

// Quantization using truncated method
subplot(3,1,3)
delta = 0.1;
xqn = fix(xn/delta)*delta;
plot2d3(n, xqn)
title("Quantized signal xq(n)")
legend(["xq(n)"])