function [root, val, iter, error] = secantMethodError(f, tol1, tol2, nmax, x0, x1, r)
    iter = 2;
    x_next = x1 - f(x1) / ((f(x1) - f(x0)) / (x1 - x0));
    error = zeros([1 nmax]);
    x0 = x1;
    x1 = x_next;
    while iter <= nmax && abs(f(x_next)) >= tol1 && abs(x_next - x0) >= tol2
        error(iter) = abs(x_next - r);
        x_next = x1 - f(x1) / ((f(x1) - f(x0)) / (x1 - x0));
        x0 = x1;
        x1 = x_next;
        iter = iter + 1;
    end
    error(iter) = abs(x_next - r);
    root = x_next;
    val = f(x_next);
end
