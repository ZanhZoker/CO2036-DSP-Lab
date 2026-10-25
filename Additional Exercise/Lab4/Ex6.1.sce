clc;
clear;

x = [1 2 -3 2 1];
h = [1 0 -1];

N = length(x);
M = length(h);
y = zeros(1, N+M-1);

for n = 1:length(y)
    for k = 1:M
        j = n-k+1;
        if j >= 1 & j <= N then         
            y(n) = y(n) + h(k)*x(j);
        end
    end
end

disp(y, "Folding and Shifting:");
exit;