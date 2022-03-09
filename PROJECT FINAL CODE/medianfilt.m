RGB = imread('image1.jpg');
I = rgb2gray(RGB);
figure
imshow(I)
K = medfilt3(I)
imshow(K)
imshowpair(I,K,'montage')
title('Median filter ')