combination(n, r) = factorial(n)/factorial(r)/factorial(n-r)
println(sum([count(x->x>1000000, y) for y in [[combination(BigInt(n), BigInt(r)) for r in 1:n] for n in 1:100]]))
