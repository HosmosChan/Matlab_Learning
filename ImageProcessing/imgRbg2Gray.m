function [ ] = imgRbg2Gray( Img )
%IMGRBG2GRAY 此处显示有关此函数的摘要
%   此处显示详细说明
% 用matlab对图像进行二值化处理
% >>m = imread('d:\image\logo.jpg');
% >> imshow(n);
% >> n = graythresh(data);
% >> im2bw(m,n);
% 用matlab对图像灰度化处理
% data = imread('01.jpg');
% imshow(data);
% gdata = rgb2gray(data);
% imshow(gdata);
 
%% 显示原图
subplot(221)
m = imread(Img);
imshow(m);
title('原始图像');
%% 对图像进行灰度化处理
subplot(222)
gdata = rgb2gray(m);
imwrite(gdata,'./ImageProcessing/Result/result01.png'); % 将灰度化图像保存在result文件夹中
imshow(gdata);
title('灰度化处理后图像');
%% 显示彩色图
subplot(223)
imshow(m);
title('彩色图像');
%% 对彩色图像进行二值化处理
subplot(224)
n = graythresh(m);
im2bw(m,n);
title('二值化处理后图像');
end

