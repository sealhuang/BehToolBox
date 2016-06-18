function data = delWrongTrl(rawdata,condition)
% Delete the trials based on response (right/wrong)
%
% Example:
%        data = delWrongTrl(rawdata,condition)
%            rawdata --> a trial Num X n X subjNum matrix
%
% edited by Lijie Huang, 2011-07-07

m = size(rawdata);
data = rawdata;
for i = 1:m(3)
    ind = find(data(:,1,i) == condition);
    trialLen = size(ind);
    for j = 1:trialLen
        data(ind(j),4,i) = data(ind(j),2,i)*data(ind(j),4,i);
    end
end
