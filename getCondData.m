function condData = getCondData(data,condition)
% get condition data based on condition ID
% Example:
%       condData = getCondData(data,condition)
%
% edited by Lijie Huang, 2011-07-07

m = size(data);
for i = 1:m(3)
    temp = data(:,:,i);
    ind = find(temp(:,1) == condition);
    trialLen = size(ind);
    for j = 1:trialLen
        tmp(j,:) = [temp(ind(j),:)];
    end
    condData(:,:,i) = tmp;
    clear tmp temp
end
