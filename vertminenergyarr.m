function minenergymap = vertminenergyarr(source)
map = rgb2gray(source);
[x,y] = gradient(map);
map = hypot(x,y);
[x,y] = size(map);
minenergymap = map;
for i=2:x
    for j=1:y
        if(j == 1)
            minenergymap(i,j) = map(i,j) + min([minenergymap(i-1,j),minenergymap(i-1,j+1)]);
        elseif (j == y)
            minenergymap(i,j) = map(i,j) + min([minenergymap(i-1,j-1),minenergymap(i-1,j)]);
        else
            minenergymap(i,j) = map(i,j) + min([minenergymap(i-1,j-1),minenergymap(i-1,j),minenergymap(i-1,j+1)]);
        end
    end
end