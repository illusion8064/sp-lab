function y = quadratic_quant(x, B, a)

L = 2^(B-1);
r = linspace(0, 1, L+1);
mid = (r(1:end-1) + r(2:end)) / 2;
mid = a*mid.^2;
r = a * r.^2;

y = zeros(size(x));

for i = 1:length(x)
    if x(i) < -a
        y(i) = -a;
    elseif x(i) >= a
        y(i) = a;
    else
        for j = 1:length(r)-1
            if x(i) >= r(j) && x(i) < r(j+1)
                y(i) = mid(j);
                break;
            end
        end
    end
end
end


