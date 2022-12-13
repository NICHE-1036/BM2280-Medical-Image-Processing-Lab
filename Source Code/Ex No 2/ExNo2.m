% Circular Correlation
% Source Code

clc;
clear all;
close all;
x=[5 10;15 20]; %first signal x[m,n]
h=[3 6;9 12]; %second signal h[m,n]
h1=fliplr(h); %to fold the signal along column wise
h2=flipud(h1); %to fold the signal among rowwise
X1=fft2(x); %fourier transform of x[m,n]
h3=fft2(h2); %fourier transform of h[-m,-n]
y1=X1.*h3; %multiplications of spectrum of x[m,n]&h[-m,-n] to get y[K,L]
y2=ifft2(y1); %inverse fourier transform of Y[K,L] yields y[m,n]
disp(y2);
plot(y1,y2);
stem(y1,y2);
title('Circular Correlation','fontweight','bold','fontsize',12);
xlabel('Multiplication of Spectrum of x[m,n] & h[-m,-n] to get y[k.n]','fontweight','bold')
ylabel('Inverse Fourier Transform of y[k,1] yields y[m,n]','fontweight','bold')