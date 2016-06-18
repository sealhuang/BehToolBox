function meanRT = condMeanRT(data, condition)
% Example:
%        meanRT = condMeanRT(data, condition)
%        
% edited by Lijie Huang, 2011-07-08

condData = getCondData(data, condition);
m = size(condData);
meanRT = zeros(m(3),1);
for i = 1:m(3)
    RT = sum(condData(:,3,i).*condData(:,4,i));
    meanRT(i) = RT/sum(condData(:,4,i));
end
