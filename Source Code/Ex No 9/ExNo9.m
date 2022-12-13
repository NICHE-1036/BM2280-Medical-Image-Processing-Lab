% Inverse Filtering
% Source Code

close all;
clear all;
clc;
x=imread('D:\BM2280 - Medical Image Processing Lab\BM2280 - Medical Images\ExNo9\Ultrasound_Echocardiogram_9b.jpg');
x=double(rgb2gray(x));
[M,N]=size(x);
h=ones(11,11)/121;
sigma=sqrt(4*10^(-7));
freqx=fft2(x); %fourier transform of input image
freqh=fft2(h,M,N); %fourier transform of degradation
y=real(ifft2(freqh.*freqx));
freqy=fft2(y);
powfreqx=freqx.^2/(M*N);
alpha=0.5; %indicates inverse filter
freqg=freqh.*abs(powfreqx)...
    ./(abs(freqh.^2).*abs(powfreqx)+alpha*sigma^2);
resfreqx=freqg.*freqy;
resa=real(ifft2(resfreqx));
imshow(uint8(x)),title('Original Image');
figure,imshow(uint8(y)),title('Degraded Image');
figure,imshow(uint8(resa)),title('Restored Image');