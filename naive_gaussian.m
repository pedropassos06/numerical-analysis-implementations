function [x] = Gaussian(A,b)
 	x = zeros(1,length(b));
 	for col = 1: length(b)
 		pivotrow = A(col,:);
 		for row = col+1: length(b)
 			lambda = (A(row,col)./pivotrow(col));
 			A(row,:) = A(row,:) - lambda.* pivotrow;
 			b(row) = b(row) - lambda* b(col);
 		end
 	end

 	x(end) = b(end)/ A(end,end);

 	for i = length(b)-1:-1:1
 		sum = 0;
 		for k = i+1:length(b)
 			sum = sum + A(i,k)*x(k);
 		end
 		x(i) = (b(i)-sum)/A(i,i);
 	end

end
