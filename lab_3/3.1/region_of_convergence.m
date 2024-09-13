function [N, ROC, ROC_zero, S] = region_of_convergence(p)

% input
p = unique(p);
p_mag = abs(p);
p_mag = sort(p_mag);
p_mag_unique = unique(p_mag);

N = length(p_mag_unique)+1;   % no. of distinct rocs
ROC = zeros(N, 2);

% defining the first and the last ROCs
 ROC(1, :) = [0, p_mag_unique(1)];
 ROC(N, :) = [p_mag_unique(N-1), Inf];


for i = 2:N-1
    ROC(i, :) = [p_mag_unique(i-1), p_mag_unique(i)];   % adding rocs between poles so that it covers all possible regions
end


% checking if zero lies in one of the ROCs
% basically if zero is one of the poles, it doesnt lie in the roc
% if its not, it does
ROC_zero = ~any(p==0);

% checking stability
S = zeros(N, 1);
for i = 1:N
    if ROC(i, 1) < 1 && ROC(i,2) > 1
        % if |z| < 1, system is stable
        S(i) = 1;
    else
        S(i) = 0;
    end
end
