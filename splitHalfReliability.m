function reliability = splitHalfReliability(data,contrast,iterNum)
% Example:
%          reliability = splitHalfReliability(data,contrast,iterNum)
%
% edited by Lijie Huang, 2011-07-08

r = zeros(iterNum, 1);
condIndex = find(contrast ~= 0);
condNum = size(condIndex);
m = size(data);

for i = 1:iterNum
    temp = zeros(m(3),2,condNum(2));
    for j = 1:condNum(2)
        condData = getCondData(data,condIndex(j));
        condData = condData(randperm(size(condData,1)),:,:);
        temp(:,:,j) = splitMeanRT(condData);
        temp(:,:,j) = contrast(condIndex(j)).*temp(:,:,j);
    end
    tmp = sum(temp,3);
    r(i) = corr(tmp(:,1),tmp(:,2));
end
% corrected reliability
reliability = 2*mean(r)/(1+mean(r));
