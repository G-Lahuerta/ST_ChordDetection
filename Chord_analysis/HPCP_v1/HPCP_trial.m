[x,fs] = audioread('...filename...');
d = 2048; % Duration of the window in samples
Y = chromagram_IF(x, fs, d);
tt = [1:size(Y,2)]*d/4/fs;
for i = 1:1:1000
bar(Y(:,i));
title(i)
set(gca,'XTickLabel',{'A','Bb','B','C','Db','D','Eb','E','F','Gb','G','Ab'})
xlabel('notes')
pause;
end