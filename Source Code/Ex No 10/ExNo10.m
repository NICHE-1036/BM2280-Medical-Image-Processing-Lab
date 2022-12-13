% Weiner Filter
% Source Code

clc;
clear all;
close all;
x=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo10\X-ray_Chest_Lateral_10c.jpg');
x=rgb2gray(x);
imshow(uint8(x),title('Original Image'));
j=imnoise(x,'gaussian',0,0.005);
figure;
imshow(j(512:700,512:700));
title('Degraded Image');
k=wiener2(j,[5,5]);
figure;
imshow(uint8(x)),title('Original Image');
imshow(k(512:700,512:700));
title('Filtered Image');