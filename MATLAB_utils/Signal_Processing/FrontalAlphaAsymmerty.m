function out=FrontalAlphaAsymmetry(data)
data1=data(9,34000:36000);
data2=data(17,34000:36000);
data=wden(data,'rigrsure','s', 'sln',5,'db2');
[pxx1 f1]=pwelch(data1,[],[],[],256);
[pxx2 f2]=pwelch(data2,[],[],[],256);
alphaIdx1 = find(f1>=8 & f1<=13);
alphaIdx2 = find(f2>=8 & f2<=13);
 
asymmetryLeft=mean(10*log10(pxx1(alphaIdx1)));

asymmetry2Right=mean(10*log10(pxx2(alphaIdx2)));

out=abs((asymmetryLeft)-(asymmetryRight));

end