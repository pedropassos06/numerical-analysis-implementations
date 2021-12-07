function x = scaled_partial_pivoting(A,b)
	n = length(A);
	%setup step
	for i = 1:n
 		s(i) = max(abs(A(i, :)));
 		l(i) = i;
	end
		%pivot step
		for k = 1:n-1

 			%relative magnitude
			 for j = k:n
			 	v(j) = abs( A(l(j),k) ) / s(l(j));
			 end

			 %exchange rows
			 [rel_max, i] = max(v);
			 temp = l(k);
			 l(k) = l(i);
			 l(i) = temp;

			 %row operations
			 for row = k+1:n
			 	ratio = A(l(row), k)/ A(l(k),k);
			 	for col = k:n
			 		A(l(row), col) = A(l(row), col) - ratio*A(l(k) ,col);
			 	end
			 	b(l(row)) = b(l(row)) - ratio *b(l(k));
			 end
		end
		
	%back subs
	x(n) = b(l(n))/A(l(n),n);
	for i = length(l):-1:1
 		sum = 0;
 		for k = i+1:n
 			sum = sum + A(l(i), k) * x(k);
 		end
 		x(i) = (b(l(i)) - sum) / A(l(i), i);
	end

end
