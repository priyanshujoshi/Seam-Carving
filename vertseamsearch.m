function seam = vertseamsearch(map)
[x,y] = size(map);
seam = zeros(x,1);
[a,pos] = min(map(x,:));
seam(x) = pos;
for i=x-1:-1:1
    if(pos == 1)
        [a,mpos] = min([map(i,pos),map(i,pos+1)])
        if(mpos == 2)
            pos = pos+1;
        end
    elseif(pos == y)
        [a,mpos] = min([map(i,pos),map(i,pos-1)]);
        if(mpos == 2)
            pos = pos-1;
        end
    else
        [a,mpos] = min([map(i,pos-1),map(i,pos),map(i,pos+1)]);
        if( mpos==1)
            pos = pos-1;
        elseif(mpos == 3)
            pos = pos+1;
        end
    end
    seam(i) = pos;
end
            