% caculate of Effect size
% cohen_d(X,Y,1) independent group
% cohen_d(X,Y,2) matched group

function [effectsize mean1 mean2 std1 std2 r] = cohen_d(X,Y,type)
    mean1 = mean(X);
    mean2 = mean(Y);
    std1 = std(X);
    std2 = std(Y);
    if type == 1
        r = 0; % independent group
    elseif type == 2
        r = corr(X,Y); % matchedgroup
    end
    effectsize = (mean1 - mean2)/sqrt(std1^2 + std2^2 - 2*r*std1*std2);
end