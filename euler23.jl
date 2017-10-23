using Primes

import Primes: factor
d(n) = Int(prod([(k^(v+1)-1)/(k-1) for (k, v) in factor(n)]) - n)
function isAbundant(n)
  if n < d(n)
    return true
  end
  return false
end

abundants = Int64[]
for i in 1:28123
  if isAbundant(i)
    push!(abundants, i)
  end
end
soa = Int64[]
for  f in abundants
  for s in abundants
      push!(soa, f+s)
    end
  end

soa = Set(soa)
soa = filter((x)->x<28123, soa)
sum(soa)
soa = collect(soa)
soa = sort(soa)

Int(28122*28123/2) - sum(soa)
