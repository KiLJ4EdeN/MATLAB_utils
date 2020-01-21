function abdol=digitalFilter(data)
    t=1:length(data);
b=(1/5000)*ones(1,5000);
a=1;
y=filter(b,a,data);
abdol=y;
end