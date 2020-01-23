function out = Frontal_Alpha_Asymmetry(data, channel1, channel2, fs)

% exctracting the channels

data1=data(channel1, :);
data2=data(channel2, :);

% wavelet denoising (can be removed)
data=wden(data,'rigrsure','s', 'sln',5,'db2');
[pxx1 f1]=pwelch(data1,[],[],[], fs);
[pxx2 f2]=pwelch(data2,[],[],[], fs);

% find alpha rythm
alphaIdx1 = find(f1>=8 & f1<=13);
alphaIdx2 = find(f2>=8 & f2<=13);

% calculating alpha power in each channel
asymmetryLeft=mean(10*log10(pxx1(alphaIdx1)));
asymmetryRight=mean(10*log10(pxx2(alphaIdx2)));

% computing asymmetry
out=abs((asymmetryLeft)-(asymmetryRight));

end
