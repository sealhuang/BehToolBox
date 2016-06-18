function splitMeanValue = splitMeanRT(data)
% Example:
%          splitMeanValue = splitMeanRT(data)
%
% edited by Lijie Huang, 2011-07-08

m = size(data);
splitMeanValue = zeros(m(3),2);
for i = 1:m(3)
    ind = find(data(:,4,i) == 1);
    itemLen = size(ind);
    oddCount = 0;
    oddSum = 0;
    evenCount = 0;
    evenSum = 0;
    for j = 1:itemLen
        if mod(j,2) == 1
            oddCount = oddCount + 1;
            oddSum = oddSum + data(ind(j),3,i);
        else
            evenCount = evenCount + 1;
            evenSum = evenSum + data(ind(j),3,i);
        end
    end
    if oddCount ~= 0
        splitMeanValue(i,1) = oddSum/oddCount;
    end
    if evenCount ~= 0
        splitMeanValue(i,2) = evenSum/evenCount;
    end
end
