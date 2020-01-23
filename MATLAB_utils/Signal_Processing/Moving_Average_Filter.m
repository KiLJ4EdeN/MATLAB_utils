% simple moving average filter

function out = Moving_Average_Filter(data, size)
n = 1:length(data);
b = (1/size)*ones(1,size);
a = 1;
out = filter(b, a, data);
end
