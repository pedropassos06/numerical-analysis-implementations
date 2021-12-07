function [t, YMat] = rk2(f, t0, y0, b, N)
	t = zeros(1, N);
	YMat = zeros(N, length(y0));
	h = (b - t0) / N;
	t(1) = t0;
	YMat(1, :) = y0;
	for i = 1:N
 		t(i+1) = t(i) + h;
 		inner = h ./ 2 .* f(t(i), YMat(i, :)) + YMat(i, :);
 		YMat(i+1, :) = YMat(i, :) + h .* f(t(i) + h./2, inner);
	end
end
