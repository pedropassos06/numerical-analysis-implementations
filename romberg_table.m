function K = romberg(f, a, b, n)
	h = b-a;
	k = 1;
	matrix = zeros(n,n);
 	matrix(1,1) = (h/2).*(f(a) + f(b));
 	for i = 2:n
 		sum = 0;
 		h = h/2;
 		for j = 1:k
 			x = a+h*(2*j-1);
 			sum = sum + f(x);
 		end
 		matrix(i, 1) = (matrix(i-1, 1)/2) + h*sum;
 		k = 2*k;
 	end

 	r = 0;
 	for row = 2:n
 		for col = 2:n
 			if col + r > n
 				break
 			end
 			matrix(col+r, row) = (4^(row-1)*matrix(col+r, row-1)-matrix(col-1+r, row-1))/(4^(row-1)-1);
 		end
 		r = r+1;
 	end
 	K = matrix;
end
