function abdol=karim(ld3)
    for j=1:35:length(ld3)-35
   an(j)=mean(abs(ld3(j:j+35)-mean(ld3(j:j+35))));
    end
    abdol=mean(an(1:35:end));
end