% Image Enhancement
% Source Code 1
 
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo6\CT_renal_biopsy_6a.jpg');
b=double(a)+50;
imshow(a),title('Original Image');
figure,imshow(uint8(b)),title('Enhanced Image');