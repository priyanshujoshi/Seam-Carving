function seam = horzseam(energymap)
[x,y] = size(energymap);
[a,pos] = min(energymap(:,y));
seam = zeros(1,y);
seam(y) = pos; 
for i=y-1:-1:1
    if(pos==1)
        [a , p] = min([energymap(pos+1,i),energymap(pos,i)]);
        if(p == 1)
            pos = pos+1;
        end
    elseif(pos == x)
        [a,p] = min([energymap(pos,i),energymap(pos-1,i)]);
        if(p == 2)
            pos = pos-1;
        end
    else
        [a , p] = min([energymap(pos-1,i),energymap(pos,i),energymap(pos+1,i)]);
        if(p == 1)
            pos = pos-1;
        elseif(p == 3)
            pos = pos+1;
        end
    end
    seam(i) = pos;
end
              
        