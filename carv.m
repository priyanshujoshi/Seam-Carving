function img = carv(source)
x = input('Enter the value for horizontal carving:');
y = input('Enter the value for vertical carving:');
img = horzcarv(source,x);
img = vertcarv(img,y);



