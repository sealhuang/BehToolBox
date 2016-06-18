function plotDelTrlRatio(SID,data,condition)
% Example:
%        plotDelTrlRatio(SID,data,condition)
%
% edited by Lijie Huang, 2011-07-07

condData = getCondData(data,condition);
m = size(condData);
tmp = zeros(m(3),1);
for i = 1:m(3)
    count = 0;
    tmpdata = condData(:,:,i);
    n = sum(tmpdata(:,2));
    for j = 1:m(1)
        if (tmpdata(j,2) == 1) && (tmpdata(j,4) == 0)
            count = count + 1;
        end
    end
    tmp(i) = count/n;
    if tmp(i) ~= 0
        fprintf('index %d --> %s : %f = %d / %d\n',...
            i,SID(i,:),tmp(i),count,n)
    end
end
i = 1:m(3);
scatter(i,tmp);
