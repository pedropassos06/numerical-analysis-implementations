function [t, y] = Eulers(f, t0, b, y0, N)
	h = (b - t0)/N;
	y = [y0];
	t = [t0];
	for i = 2:N
 		y(i) = y(i-1) + h*f(t(i-1),y(i-1));
 		t(i) = t(i-1) + h;
	end
end
