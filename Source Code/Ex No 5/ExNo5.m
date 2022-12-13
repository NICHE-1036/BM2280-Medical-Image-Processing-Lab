% Image Subtraction
% Source Code

clc;
clear all;
close all;
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo5\CT_Lung_Axial_Lung_Window_5a.jpg');
b=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo5\CT_Lung_Axial_Lung_Window_5b.jpg');
c=double(a)-double(b);
subplot(2,2,1),imshow(uint8(a)),title('CT Image 1');
subplot(2,2,2),imshow(uint8(b)),title('CT Image 2');
subplot(2,2,3),imshow(uint8(c)),title('CT Image 1 - CT Image 2');