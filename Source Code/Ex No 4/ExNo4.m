% Image Negative
% Source Code

clear all;
close all;
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\Exno4\CT_Lung_Axial Non_contrast_4a.jpg');
%subtract the maximum values from each pixel
b=255-a;
subplot(2,2,1),imshow(a),title('Original Image');
subplot(2,2,2),imshow(b),title('Negative of the Original Image');