 I1 = im2single(imread('19_7.bmp'));
 I2 = im2single(imread('37_3.bmp'));
 halphablend = vision.AlphaBlender;
 a = step(halphablend,I1,I2);
figure; imshow(a);
 %newsnl(a);