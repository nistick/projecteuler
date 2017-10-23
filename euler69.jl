using Primes

function ϕ(n::Int)
  for p in keys(factor(n))
    n -= div(n, p)
  end
  n
end
println(indmax([i/ϕ(i) for i in 1:1000000]))
