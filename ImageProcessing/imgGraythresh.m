% 将图像进行阈值分割处理(不适用于彩色图片)
function [ ] = imgGraythresh( Img )
% UNTITLED 此处显示有关此函数的摘要
%% 此处显示详细说明
subplot(221)
I = imread(Img);
imshow(I);
%% 输出直方图
subplot(222)
imhist(I);
%% 人工选定阈值进行分割，选择阈值为120
[width,height] = size(I);
T1 = 120;
BW1 = zeros(1,1);
for i = 1:width
    for j = 1:height
        if(I(i,j)<T1)
            BW1(i,j) = 0;
        else
            BW1(i,j) = 1;
        end
    end
end
subplot(223)
imshow(BW1),title('人工阈值进行分割');
%% 自动选择阈值
T2 = graythresh(I);
BW2 = imbinarize(I,T2);% Otus阈值进行分割
subplot(224)
imshow(BW2),title('Otus阈值进行分割');
end