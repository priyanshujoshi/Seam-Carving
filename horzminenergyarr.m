function energymap = horzminenergyarr(source)
map = rgb2gray(source);
[x , y] = gradient(map);
map = hypot(x,y);
[x , y] = size(map);
energymap = map;
for i=2:y
    for j=1:x
        if(j == 1)
            energymap(j,i) = map(j,i) + min([energymap(j,i-1),energymap(j+1,i-1)]);
        elseif(j == x)
                energymap(j,i) = map(j,i) + min([energymap(j-1,i-1),energymap(j,i-1)]);
        else
                energymap(j,i) = map(j,i) + min([energymap(j-1,i-1),energymap(j,i-1),energymap(j+1,i-1)]);
        end
    end
end
%imshow(energymap);
       
        
        
                
                
