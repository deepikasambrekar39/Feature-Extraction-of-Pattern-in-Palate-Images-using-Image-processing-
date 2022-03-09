%% Take image
[file, path] = uigetfile('*.jpg','select the color palate image');%user selects the image.
I = imread([path file]);%read the image
subplot(3,2,1),imshow(I),title('Original Image')
%% Gray conversion
[r,c,d] = size(I);%calculating the size of the image
if (d==3)
    gray = rgb2gray(I);%
    subplot(3,2,2),imshow(gray),title('Grayscaled Image')
    %gray=imresize(gray,[28,28]);%using interpolation
else
    gray = I ;
    subplot(3,2,2),imshow(gray),title('Image is already grayscale')
    %gray=imresize(gray,[28,28]);
end
%% Pre-processing using median filter
fil = medfilt2(gray);%filtering the image
subplot(3,2,3),imshow(fil),title('Median filtered Image')
%% cropping the image
[Crop, rect] = imcrop(fil);%crop the image manually and store in crop
subplot(3,2,4),imshow(Crop),title('Manually cropped Image')
%% convert the image into black and white

%BW = Crop > thresh;
BW = imbinarize(Crop)
BW = ~BW
subplot(3,2,5),imshow(BW),title('white and black Cropped Image')
%% area calculation using pixels
[r,c]=size(BW);
bc=1;
wc=1;
for i=1:r
    for j=1:c
        if BW(i,j)==0
            bc=bc+1;
        else
            
            wc=wc+1;
        end      
    end
end
msgbox(string(wc),'Area')





