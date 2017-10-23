using Primes
import Primes: primes
function bach(x)
  subprimes = primes(x)
  xsub = x-subprimes
  even_ = filter(iseven, xsub)
  sqr = even_./2
  gg(k) = isinteger(sqrt(k))
  cc = filter(gg, sqr)
  length(cc) != 0
end
for i in 33:10000
  if !isodd(i)
    continue
  end
  if !bach(i)
    println(i)
    break
  end
end
