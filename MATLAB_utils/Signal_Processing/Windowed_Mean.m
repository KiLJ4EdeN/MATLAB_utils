% absolute windowed detrentding.
function out=Windowed_Mean(data, win_size)
    for j = 1:win_size:length(data) - win_size
        temp(j) = mean(abs(data(j:j+win_size) - mean(data(j:j+win_size))));
    end
    out=mean(temp(1:win_size:end));
end
