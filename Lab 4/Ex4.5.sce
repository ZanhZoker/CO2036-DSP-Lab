
clc;
clear;
clf;

// Exercise 5: Image Processing - Gaussian Blur

// 1. Initialize Computer Vision toolbox
scicv_Init();

// 2. Load sample image
img = imread(getSampleImage("lena.jpg"));

// 3. Apply Gaussian Blur
// Moderate blur: 9x9 kernel
img_blur1 = GaussianBlur(img, [9, 9], 2);

// Strong blur: 31x31 kernel
img_blur2 = GaussianBlur(img, [31, 31], 6);

// 4. Display results
scf(0);
clf;

// Original image
subplot(1, 3, 1);
matplot(img);
title("Original Image");

// Moderate blur
subplot(1, 3, 2);
matplot(img_blur1);
title("Gaussian Blur - 9x9");

// Strong blur
subplot(1, 3, 3);
matplot(img_blur2);
title("Gaussian Blur - 31x31");

disp("Image processing completed!");
