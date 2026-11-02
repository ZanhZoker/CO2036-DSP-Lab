
clc;
clear;
clf;

// Exercise 4: Audio Processing - Echo Effect

// 1. Load sample audio included in Scilab
file = "SCI/modules/sound/demos/chimes.wav";
[x, Fs, bits] = wavread(file);

// 2. Echo parameters
delay = 0.2;       // Delay time (seconds)
alpha = 0.5;       // Echo amplitude
D = round(delay * Fs);

N = size(x, 2);
channels = size(x, 1);

// 3. Create echo signal
y = zeros(channels, N + D);
y(:, 1:N) = x;

y(:, D+1:D+N) = y(:, D+1:D+N) + alpha*x;

// 4. Normalize to prevent clipping
peak = max(abs(y));

if peak > 1 then
    y = y / peak;
end

// 5. Time axes
t1 = (0:N-1) / Fs;
t2 = (0:N+D-1) / Fs;

// 6. Display waveforms
scf(0);
clf;

subplot(2,1,1);
plot(t1, x(1,:));
xtitle("Original Audio Signal", "Time (s)", "Amplitude");

subplot(2,1,2);
plot(t2, y(1,:));
xtitle("Audio Signal with Echo", "Time (s)", "Amplitude");

// 7. Save processed audio
wavwrite(y, Fs, 16, "chimes_echo.wav");

// 8. Open processed audio using Windows
disp("Opening audio with echo...");
winopen(fullfile(pwd(), "chimes_echo.wav"));

disp("Audio processing completed!");

disp("Audio processing completed!");
disp("Output folder:");
disp(pwd());
