using Primes

function ϕ(n::Int)
  for p in keys(factor(n))
    n -= div(n, p)
  end
  n
end

res = []
for n in 2:10^7-1
    totient = ϕ(n)
    if sort(collect(string(n))) == sort(collect(string(totient)))
        push!(res, n)
    end
end

idx = indmin([x/ϕ(x) for x in res])
println(res[idx])
