function zeroRT = zeroRTStat(data,condition)
% Example:
%         zeroRT = zeroRTStat(data,condition)
%
% edited by Lijie Huang, 2011-07-08

m = size(data);
zeroRT = zeros(m(3),1);
for i = 1:m(3)
    condInd = data(:,1,i) == condition;
    ind = find(data(condInd,3,i)==0);
    zeroRT(i) = size(ind,1);
end
