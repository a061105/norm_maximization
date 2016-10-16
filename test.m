m = 20;
n = 10;
B = randn(n,m);
A = -B'*B;

[V,D] = eig(A);

v = V(:,1);

%v'
%-v'
x = bestCorner(A);
%x'
%x'*A*x

flip_v = nnz(sign(v)~=x);
flip_minus_v = nnz(sign(-v)~=x);
if flip_v < flip_minus_v
	w = v;
else
	w = -v;
end

ws = sign(w);
eig_val = ws'*A*ws
exact_val = x'*A*x
diff = nnz(ws~=x)
