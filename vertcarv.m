function img2 = vertcarv(img1,y)
img2 = img1;
for i=1:y
    minenergymap = vertminenergyarr(img2);
    seam = vertseamsearch(minenergymap);
    img2 = seamdeletion(seam,img2);
end