function min_x = bestCorner(A)

[m,m] = size(A);

D = [0:2^m-1]';
B = rem(floor(D*pow2(-(m-1):0)),2);

B(B==0)=-1;

min_val = 1e300;
min_x = -1;
for i = 1:size(B,1)
	x = B(i,:)';
	val = x'*A*x;
	if val < min_val
		min_val = val;
		min_x = x;
	end
end
