function sum = lagrangePoly(nodes, fnodes, x)
    sum = zeros(size(x));
    for i = 1:length(fnodes)
        cur = fnodes(i);
        for j = 1:length(nodes)
            if i == j
            continue
            end
        cur = cur .* (x - nodes(j)) ./ (nodes(i) - nodes(j));
        end
    sum = sum + cur;
    end
end
