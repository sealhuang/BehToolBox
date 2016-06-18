function plotRTHist(data,condition,binNum)
% Example:
%        plotRTHist(data,condition,binNum)
%
% edited by Lijie Huang, 2011-07-07

condData = getCondData(data,condition);
m = size(condData);
temp = [];
for i = 1:m(3)
    for j = 1:m(1)
        if condData(j,4,i) == 1
            temp = [temp,condData(j,3,i)];
        end
    end
end
hist(temp,binNum)