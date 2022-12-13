% Edge Detection using Different Edge Detector
% Source Code

clc;
clear all;
close all;
I=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo11\CT_Lung_Axial_Lung_Window_11a.jpg');
I1=rgb2gray(I);
f=edge(I1,'Canny');
b=edge(I1,'Roberts');
c=edge(I1,'Sobel');
d=edge(I1,'Prewitt');
e=edge(I1,'Log');
subplot(2,3,1);
imshow(I),title('Original Image');
subplot(2,3,2);
imshow(I),title('Canny');
subplot(2,3,3);
imshow(I),title('Roberts');
subplot(2,3,4);
imshow(I),title('Sobel');
subplot(2,3,5);
imshow(I),title('Prewitt');
subplot(2,3,6);
imshow(I),title('Log');

