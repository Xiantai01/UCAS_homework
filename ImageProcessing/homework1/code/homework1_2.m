% �����Ĺ�һ��ֱ��ͼ
histogram = [0.17  0.25  0.21  0.16  0.07  0.08  0.04  0.02];

% ����CDF
cdf = cumsum(histogram);

% ʹ��ֱ��ͼ���⻯�����µĻҶȼ�
L = length(histogram);
new_gray_levels = round((L-1) * cdf);
intensity = [0 0.17 0 0.25 0.21 0 0.23 0.14];
% ʹ��MATLAB�����µ�ֱ��ͼ
figure;
bar(0:L-1, intensity);
xlabel('�µĻҶȼ�');
ylabel('��Ӧ�ĸ���');
title('ֱ��ͼ���⻯��ĻҶȼ�');