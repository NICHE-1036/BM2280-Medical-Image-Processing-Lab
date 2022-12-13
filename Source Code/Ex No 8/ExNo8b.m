% Image Sharpening Spatial Filter
% Butterworth High pass filter
% Source Code 2

clc;
clear all;
close all;
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo8\ct_8b.jpg');
b=rgb2gray(a);
h1=1/9*[-10 -10 -10;-10 80 -10;-10 -10 -10];
b1=conv2(b,h1,'same');
subplot(1,2,1);
imshow(uint8(b)),title('CT Image of the Brain')
subplot(1,2,2);
imshow(uint8(b1)),title('HPF using 3x3 mask');