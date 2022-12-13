%Image Smoothening Spatial Filter
%Butterworth Lowpass Filter
%Source Code

clc;
clear all;
close all;
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo7\CT_renal_biopsy_7a.jpg');
b=rgb2gray(a);
h1=1/9*ones(3,3);
h2=1/25*ones(5,5);
h3=1/49*ones(7,7);
b1=conv2(b,h1,'same');
b2=conv2(b,h2,'same');
b3=conv2(b,h3,'same');
subplot(2,2,1);
imshow(b),title('CT Image of Brain');
subplot(2,2,2);
imshow(b1),title('LPF using 3x3 mask');
subplot(2,2,3);
imshow(b2),title('LPF using 5x5 mask');
subplot(2,2,4);
imshow(b3),title('LPF using 7x7 mask');