function b = hornersSum(coefficients, xVal)
    k = length(coefficients);
    b = xVal * coefficients(k) + coefficients(k - 1);
    for i = k-1:-1:2
        b = coefficients(i - 1) + xVal * b;
    end
end
