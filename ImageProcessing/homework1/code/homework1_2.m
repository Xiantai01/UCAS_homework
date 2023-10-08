% 给定的归一化直方图
histogram = [0.17  0.25  0.21  0.16  0.07  0.08  0.04  0.02];

% 计算CDF
cdf = cumsum(histogram);

% 使用直方图均衡化计算新的灰度级
L = length(histogram);
new_gray_levels = round((L-1) * cdf);
intensity = [0 0.17 0 0.25 0.21 0 0.23 0.14];
% 使用MATLAB绘制新的直方图
figure;
bar(0:L-1, intensity);
xlabel('新的灰度级');
ylabel('对应的概率');
title('直方图均衡化后的灰度级');