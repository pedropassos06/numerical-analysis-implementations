function ret = rich(f, N, h, x)

matrix = zeros(N,N);
F = @(h) (f(x+h) - f(x))/h;

% First fill up col 1
for i = 1:N
    matrix(i,1) = F(h/(2^(i-1)));
end

% Calculate down the table
for col = 2:N
    for row = col:N
        matrix(row,col) = (((2^(col-1))*matrix(row,col-1)) - matrix(row-1,col-1))/((2^(col-1))-1);
    end
end

ret = matrix(N,:);

end
