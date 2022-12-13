% Application ofd Circular Convolution
% Source Code

clc;
clear all;
close all;
a=imread('C:\Users\Public\Pictures\Sample Pictures\Ultrasound_Transthoracic Echocardiogram_Longitudinal_Image4a.jpg');
s=input('Enter the resizing ratio');
[m,n]=size(a);
s1=s*m;
re=zeros(s1,s*n);
for i=1:m
    for j=1:n
        k=s*(i-1);
        l=s*(j-1);
        re(k+1,l+1)=a(i,j);%to get the pixel value in the interpolated matrix
    end;
end;
i=1;
while(i<=(s1))
    j=1;
    while(j<=(s*n))
        x=ones(s,s);
        for p=1:s
            for q=1:s
                c(p,q)=re(i,j);%to extract the pixel matrix
                j=j+1;
            end;
            i=i+1;
            j=j-s;
        end;
        z=ifft2(fft2(c).*fft2(x));%circular convolution using dft and idft
        i=i-s;
        for p=1:s
            for q=1:s
                re(i,j)=z(p,q);%to generate the interpolated matrix
                j=j+1;
            end;
            i=i+1;
            j=j-s;
        end;
        i=i-s;
        j=j+s;
    end;
    i=i+s;
end;
figure;
imshow(uint8(a));
title('Original Input Image to be Interpreted');
figure;
imshow(uint8(re));
title('Circular Convoluted Image');
     
     
    
              
              
                    
                    
                    
                    
                    
                    
                    
                    