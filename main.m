img=imread('seamcarv.jpg');
 img = double(img)/255.0;
new = carv(img);
imshow(new);
