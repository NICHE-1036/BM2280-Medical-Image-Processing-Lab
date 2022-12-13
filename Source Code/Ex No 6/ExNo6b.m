% Brightness Modification 
% Source Code 2
 
a=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo6\CT_renal_biopsy_6a.jpg');
b=double(a)-70;
imshow(a),title('Original Image');
figure,imshow(uint8(b)),title('Brightness Suppressed Image');