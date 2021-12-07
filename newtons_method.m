function [xn, yn, iterations] = newton(f, fprime, tol1, tol2, nmax, xo)
    xn = xo - (f(xo)./fprime(xo));
    iterations = 0;
    while ( abs(f(xn)) > tol1 && abs(xn-xo) > tol2 && iterations < nmax)
        xo = xn;
        xn = xo - (f(xo)./fprime(xo));
        iterations = iterations + 1;
    end
    yn = f(xn);
end
