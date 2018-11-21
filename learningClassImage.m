%{
learningClassImage.m
%}
imgRbg2Gray('01.jpg');% 将彩色图片进行阈值化处理
waitBar(10e+2);% 延时10e+2 ms
figure;
imgGraythresh('./ImageProcessing/Result/result01.png');% 将阈值化处理后的图片进行二值化分割