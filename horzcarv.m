function img2 = horzcarv(img1,x)
img2=img1;
for i=1:x
    
    minenergymap = horzminenergyarr(img2);
    seam = horzseamsearch(minenergymap);
    img2 = horzseamdeletion(seam,img2);
end
