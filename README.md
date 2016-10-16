This project runs a test on approximating the solution of

<pre>
min_{x}  x^TAx

s.t.  \|x\|_{\infty} <= 1
</pre>

with 

<pre>
x* = sign( top_eig(A) )
</pre>
