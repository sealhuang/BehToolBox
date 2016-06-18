function plotTrend(dataMtx)
% Plot a figure of data trend.
% Example:
% plotTrend(dataMtx)
% Input:
%       dataMtx is a matrix of M x N.
%           Each row --> from one sample
%           Each col --> one variable value
%
% Edited by Lijie Huang, 2011-06-21
%

[m,n] = size(dataMtx);
i = 1:n;
figure
for j = 1:m
    plot(i,dataMtx(j,:),'b-')
    hold on
end