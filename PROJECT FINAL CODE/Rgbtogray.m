RGB = imread('image7.jpg');
I = rgb2gray(RGB);
BW = imbinarize(I);
figure
imshowpair(I,BW,'montage')
