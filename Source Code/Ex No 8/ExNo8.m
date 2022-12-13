% Image Sharpening Spatial Filter
% Butterworth High pass filter
% Source Code 1

clc;
clear all;
close all;
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo8\ct_8b.jpg');
h=fspecial('unsharp');
b=imfilter(a,h);
imshow(a),title('Original Image');
figure
imshow(b),title('Unsharp Mask');