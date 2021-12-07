function ret = compSimp(f, a, b, n)
 	if mod(n, 2) ~= 0
 		error("Try again with an even number for n")
 	end
 	h = (b-a)/n;
 	sum1 = 0; sum2 = 0;
 	for k = 1:n-1
 		x(k) = a+k*h;
 	end
 	for i = 1:2:n-1
 		sum1 = sum1 + f(x(i));
 	end

 	for j = 2:2:n-2
 		sum2 = sum2 + f(x(j));
 	end
 	sum1 = 4*sum1;
 	sum2 = 2*sum2;

 	ret = (h/3)*(f(a) + sum1 + sum2 + f(b));
end
