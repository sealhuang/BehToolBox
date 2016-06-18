function accuracy = condAccuracy(data,condition)
% Example:
%          accuracy = condAccuracy(data,condition)
%
% edited by Lijie Huang, 2011-07-08

condData = getCondData(data,condition);
m = size(data);
accuracy = zeros(m(3),1);
for i = 1:m(3)
    totalTrl = sum(eq(condData(:,2,i),condData(:,4,i)));
    accuracy(i) = sum(condData(:,4,i))/totalTrl;
end
