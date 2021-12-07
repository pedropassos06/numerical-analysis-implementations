function x = partPiv(A, b)
 	%find triagular matrix
 	for k = 1:length(b)-1

 		[~, I] = max( abs( A( k:length(b), k ) ) );
 		I = I + (k - 1);

		 temp = A(I, :);
		 A(I, :) = A(k, :);
		 A(k, :) = temp;

		 temp = b(I);
		 b(I) = b(k);
		 b(k) = temp;

		 for i = k+1:length(b)
 			ratio = A(i,k)/A(k,k);

 			for j = k:length(b)
 				A(i,j) = A(i,j) - A(k,j) * ratio;
 			end
 			b(i) = b(i) - ratio*b(k);
 		end
 	end

 	%back sub
 	x = zeros(1,length(b)); x(end) = b(end) / A(end, end);
 	for i = length(b)-1:-1:1
 		sum = 0;
 		for k = i+1:length(b)
 			sum = sum + A(i,k) * x(k);
 		end
 		x(i) = (b(i) - sum) / A(i,i);
 	end
end
