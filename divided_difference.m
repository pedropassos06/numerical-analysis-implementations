function dd_matrix = divided_difference(nodes, fnodes)
    n = length(nodes) - 1;
    dd_matrix = zeros(n+1, n+1);
    for i = 1:n+1
        dd_matrix(i,1) = fnodes(i);
    end
    for i=2:n+1
        for j=1:n-i+2
            dd_matrix(j,i) = (dd_matrix(j+1,i-1) - dd_matrix(j,i-1))/(nodes(j+i-1)-nodes(j))
        end
    end
end
