%Program of Steganography Using LSB substitution%
%- by Ashish Soni, ATC Indore
% ashishsoni15@gmail.com
clc;
clear all;
close all;

cover = input('Enter cover image: ', 's');
message = input('Enter message image name: ', 's');

x = imread(cover);         % cover message
y = imread(message);    % message image
n = input('Enter the no of LSB bits to be subsituted- '); 

S = uint8(bitor(bitand(x,bitcmp(2^n-1,8)),bitshift(y,n-8))); %Stego
E = uint8(bitand(255,bitshift(S,8-n))); %Extracted

origImg = double(y);   %message image
distImg = double(E);   %extracted image

[M N] = size(origImg);
distImg1=imresize(distImg,[M N]);
error = origImg - distImg1;
MSE = sum(sum(error .* error)) / (M * N);
if(MSE > 0)
    PSNR = 10*log10(M*N./MSE);
else
    PSNR = 99;
end
disp('PSNR of message image to extracted image is')
disp(abs(PSNR))
disp('MSE is')
disp(abs(MSE))


figure(1),imshow(x);title('1.Cover image')
figure(2),imshow(y);title('2.Message to be hide')
figure(3),imshow((abs(S)),[]);title('3.Stegnographic image')
figure(4),imshow(real(E),[]); title('4.Extracted image')

figure(5),imhist(x); title('Histogram of cover image')
figure(6),imhist(S); title('Histogram of transformed stego image')