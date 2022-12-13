% Contrast Enhancement
% Source Code 3
 
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo6\CT_renal_biopsy_6a.jpg');
b=rgb2gray(a);
c=b*.8;
d=b*1.5;
imshow(a),title('Original Image');
figure,imshow(uint8(c)),title('Increase in Contrast');
figure,imshow(uint8(d)),title('Decrease in Contrast');