fib(0, 1).
fib(1, 1).
fib(N, X) :- 
			T is 1, 
			Y is 2, 
			Z is 2, 
			fibo(T, Z, N, Y).
fibo(T, N, N, Y) :- write(Y).
fibo(T, Z, N, Y) :- Y1 is Y + T, 
                    A is 1,
                    Z1 is Z + A, 
					T1 is Y,
					fibo(T1, Z1, N, Y1).