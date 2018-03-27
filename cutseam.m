function cutout = cutseam(horzseam,img1)
[x , y, z] = size(img1);
cutout = zeros(x-1,y,z);
for i=1:y
    cutout(:,i,:) = img1([1:horzseam(i)-1,horzseam(i)+1:x],i,:);
end

