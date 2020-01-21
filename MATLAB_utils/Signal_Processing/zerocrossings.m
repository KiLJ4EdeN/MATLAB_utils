function abdol=Triang(ld2)

    ld3=ld2;
    A=sign(ld3(1));
    C=0;
    for i=2:length(ld3)
        if sign(ld3(i-1))*sign(ld3(i))~=1
            C=C+1;
        else
            C=C+0;
        end
    end
    abdol=C;
end

  
    