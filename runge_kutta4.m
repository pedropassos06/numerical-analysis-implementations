function [t, YMat] = rk4(f, t0, y0, b, N)
	t = zeros(1, N);
	YMat = zeros(N, length(y0));
	h = (b - t0) / N;
	t(1) = t0;
	YMat(1, :) = y0;
	for i = 1:N
 		t(i+1) = t(i) + h;
 		k1 = h*f(t(i), YMat(i,:));
 		k2 = h*f(t(i) + h/2, YMat(i, :) + 1/2*k1);
 		k3 = h*f(t(i) + h/2, YMat(i, :) + 1/2*k2);
 		k4 = h*f(t(i+1), YMat(i, :) + k3);
 		YMat(i+1, :) = YMat(i, :) + 1/6 .* (k1 + 2*k2 + 2*k3 + k4);
	end
end
