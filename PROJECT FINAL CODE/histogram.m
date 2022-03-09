 I = imread('image1.jpg');
   figure, imshow(I)
   figure
  imhist(I)
  I2 = histeq(I);
  figure
 imshow(I2)
 figure
 imhist(I2)