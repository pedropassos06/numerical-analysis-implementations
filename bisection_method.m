function [c,fVal,iter] = bisectAlg(f, a, b, tol1, tol2)
format long
iter = 0;
c = (a + b) / 2;
while abs(b-a) > tol2 && abs(f(c)) > tol1
    iter = iter + 1;
    if f(a) * f(c) > 0
        a = c;
    else
        b = c;
    end
    c = (a+b) / 2;
end
fVal = f(c);
end
