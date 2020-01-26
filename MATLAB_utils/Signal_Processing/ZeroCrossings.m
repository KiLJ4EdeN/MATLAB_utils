function out = ZeroCrossings(data)
    Data_Sign = sign(data(1));
    Count = 0;
    for i = 2:length(ld3)
        if sign(data(i-1)) * sign(data(i)) ~= 1
            Count = Count + 1;
        else
            Count = Count + 0;
        end
    end
    out = Count;
end

  
    
