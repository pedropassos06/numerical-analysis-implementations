function xn=fixedPt(f, a, b, n)
    xn = f((a-b)./2);
    for i=1:n
        xn = f(xn);
    end
end
