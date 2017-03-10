numscales=3;

imgdir='D:\ESiahaan\DATA\PHD EXPERIMENTS AND DOCS\2016 - DATASET RELEASE\ALL IMAGES BLUR\';

imageNICE2=[];

se= strel('arbitrary', [0 1 0; 1 1 1; 0 1 0]);

for imgID=1:79
    
imgname=ImageNames{imgID,1};
imgname2=ImageNames{imgID+79,1};
imgname3=ImageNames{imgID+158,1};
refimg=double(rgb2gray(imread([imgdir, imgname])));
testimg=double(rgb2gray(imread([imgdir,imgname2])));
testimg2=double(rgb2gray(imread([imgdir,imgname3])));

imageNICE2(imgID,1) = NICE_edge(refimg, testimg);
imageNICE2(imgID,2) = NICE_edge(refimg, testimg2);


end