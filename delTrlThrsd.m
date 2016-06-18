function data = delTrlThrsd(data,lowThrsd,highThrsd,condition)
% Delete the trials based on threshold
%
% Example:
%        data = delTrlThrsd(data,lowThrsd,highThrsd,condition)
%
% edited by Lijie Huang, 2011-07-07

m = size(data);
for i = 1:m(3)
    ind = find(data(:,1,i) == condition);
    trialLen = size(ind);
    for j = 1:trialLen
        if data(ind(j),2,i) ~= 0
            if (data(ind(j),3,i) > highThrsd) || (data(ind(j),3,i) < lowThrsd)
                data(ind(j),4,i) = 0;
            else
                data(ind(j),4,i) = 1;
            end
       end
   end
end
