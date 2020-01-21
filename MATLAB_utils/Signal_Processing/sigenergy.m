function energy=sigenergy(data)
    wut=(data.*conj(data));
    for m=2
    energ(m)=mean(abs(wut(1:m:end-1)-wut(2:m:end)));
    end
    energy=sum(abs(energ(1:end-1)-energ(2:end)));
end