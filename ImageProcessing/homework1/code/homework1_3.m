% Generate a random grayscale image
I = randi([0, 255], 256, 256, 'uint8');

% Apply histogram equalization
I_equalized1 = histeq(I);

% Apply histogram equalization a second time
I_equalized2 = histeq(I_equalized1);

% Plot histograms
figure;

% Original image histogram
subplot(3,1,1);
imhist(I);
title('Histogram of Original Image');

% First pass histogram-equalized image
subplot(3,1,2);
imhist(I_equalized1);
title('Histogram After First Pass of Equalization');

% Second pass histogram-equalized image
subplot(3,1,3);
imhist(I_equalized2);
title('Histogram After Second Pass of Equalization');