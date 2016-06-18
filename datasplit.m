function splitValue = datasplit(srcPath)

cd(srcPath)
fileList = ls;
m = size(fileList);
splitValue = zeros(m-2,4*2);
for i = 3:m
    num = i - 2;
    load(strtrim(fileList(i,:)))
    rawdata = cell2mat(lsess.trial);
    for j = 1:4
        ind = find(rawdata(:,1) == j);
        rawLen = size(ind);
        for k = 1:rawLen
            tmp(k,:) = rawdata(ind(k),:);
        end
        RT = tmp(:,2).*tmp(:,3);
        non0ind = find(RT ~= 0);
        itemLen = size(non0ind);
        oddNum = 0;
        evenNum = 0;
        for a = 1:itemLen
            if mod(a,2) == 1
                splitValue(num,j*2-1) = ...
                    splitValue(num,j*2-1) + RT(non0ind(a));
                oddNum = oddNum + 1;
            else
                splitValue(num,j*2) = ...
                    splitValue(num,j*2) + RT(non0ind(a));
                evenNum = evenNum + 1;
            end
        end
        splitValue(num,j*2-1) = splitValue(num,j*2-1)/oddNum;
        splitValue(num,j*2) = splitValue(num,j*2)/evenNum;
    end
    clear lsess
end
