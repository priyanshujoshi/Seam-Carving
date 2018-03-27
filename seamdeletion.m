function img2 = seamdeletion(seam,img)
[x,y,z] = size(img);
img2 = zeros(x,y-1,z);
for i=1:x
    img2(i,:,:) = img(i,[1:seam(i)-1,seam(i)+1:y],:);
end