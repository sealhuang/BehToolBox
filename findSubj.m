function subjIndex = findSubj(subjID,SID)
% Example:
%      subjIndex = findSubj(subjID,SID)
%
% edited by Lijie Huang, 2011-07-08

subjNum = size(SID);
subjIndex = -1;
for i = 1:subjNum(1)
    if strcmp(SID(i,:),subjID)
        subjIndex = i;
    end
end
if subjIndex == -1
    fprintf('%s does not exist.\n',subjID)
end
