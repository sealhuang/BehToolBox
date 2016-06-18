function [SID, data] = delSubj(subjID,SID,data)
% Delete a subject according to the input subject ID
% Example:
%          [SID, data] = delSubj(subjID,SID,data)
%
% edited by Lijie Huang, 2011-07-07

temp = findSubj(subjID,SID);
if temp ~= -1
    SID(temp,:) = '';
    data(:,:,temp) = [];
    fprintf('Delete subject %s.\n',subjID)
end
