function ret = compTrap(a, b, n, f)
    h = (b-a)/n;
    sum = 0;
    for i = 1:n-1
        x(i) = a+i*h;
        sum = sum + f(x(i));
    end
    sum = 2*sum;
    ret = (h/2)*(f(a) + sum + f(b));
end
