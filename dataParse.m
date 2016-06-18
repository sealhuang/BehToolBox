function done = dataParse(srcPath,desFile)
cwd = pwd;
cd(srcPath)
dirList = dir;
m = size(dirList);
for i = 3:m
    num = i - 2;
    tmpStr = strcat(dirList(i,:).name,'/*_std.*');
    fileInfo = dir(tmpStr);
    fileName = strcat(dirList(i,:).name,'/',fileInfo.name);
    load(strtrim(fileName));
    SID(num,:) = lsess.subject.ID;
    data = cell2mat(lsess.trial);
    n = size(data);
    rawdata(:, :, num) = [data,ones(n(1),1)];
end
save(desFile, 'rawdata', 'SID')
cd(cwd)
done = 1;