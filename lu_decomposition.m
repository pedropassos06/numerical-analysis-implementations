function [l, u] = lu(A)
 	n = length(A); l = eye(n,n);
 	for k = 1:n-1
 		for i = k+1:n
 			ratio = (A(i,k)/A(k,k));
 			l(i,k) = ratio;
 			for j = k:n
 				A(i,j) = A(i,j) - ratio*A(k,j);
 			end
 		end
 	end
 	u = A;
end
