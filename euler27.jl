using Primes

import Primes: isprime

function isConstinuousPrime(a, b, x)
  fx(n) = n^2+a*n+b
  for n in 0:x
    if !isprime(fx(n))
      return false
    elseif fx(n) < 2
      return false
    end
  end
  true
end

isConstinuousPrime(1, 41, 40)
isConstinuousPrime(-79, 1601, 80)
ggg = []
for a in -999:999
  for b in -999:999
    idx = 1
    while true
      if !isConstinuousPrime(a, b, idx)
        push!(ggg, [a, b, idx-1])
        break
      end
      idx += 1
    end
  end
end

aa(x) = x[3] != 0
aa([1,2, 0])
aa([1,2, 1])
ggg  = filter(aa , ggg)

ag = ggg[1]
for gg in ggg
  if ag[3] < gg[3]
    println(gg)
    ag = gg
  end
end
println(ag)
