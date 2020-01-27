% simple moving average filter

function out = Moving_Average_Filter(data, size)

%  chooise the moving average filter size.
b = (1/size)*ones(1,size);

% the other side of the lccde in 1 in MA difference equations.
a = 1;

% apply the filter on the data.
out = filter(b, a, data);
end
