function [t,y] = secondTaylor(f,ft,fy,t0,y0,b,N)
 	t = t0;
 	y = y0;
 	h = (b-t0)/N;

 	for i = 1:N

 		y(i+1) = y(i) + h*(f(t(i), y(i))) + (h^2)/2 * (ft(t(i),y(i)) + fy(t(i),y(i))*f(t(i),y(i)));
 		t(i+1) = t(i) + h;
 	end

end
