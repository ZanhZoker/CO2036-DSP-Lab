clc;
clear;

x = [1 2 -3 2 1];
h = [1 0 -1];

N = length(x);
M = length(h);

H = zeros(N+M-1, N);

for i = 1:N
    H(i:i+M-1, i) = h';
end

y = H*x';

disp(H, "Convolution Matrix:");
disp(y', "Linear Convolution:");