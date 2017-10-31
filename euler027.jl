# Quadratic primes
# Problem 27
# Euler discovered the remarkable quadratic formula:
#
# n²+n+41
#
# It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤390≤n≤39. However, when n=40,402+40+41=40(40+1)+41n=40,402+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,412+41+41n=41,412+41+41 is clearly divisible by 41.
#
# The incredible formula n2−79n+1601n2−79n+1601 was discovered, which produces 80 primes for the consecutive values 0≤n≤790≤n≤79. The product of the coefficients, −79 and 1601, is −126479.
#
# Considering quadratics of the form:
#
# n2+an+bn2+an+b, where |a|<1000|a|<1000 and |b|≤1000|b|≤1000
#
# where |n| is the modulus/absolute value of nn
# e.g. |11|=11 and |−4|=4
# Find the product of the coefficients, aa and bb, for the quadratic expression that produces the maximum number of primes for consecutive values of nn, starting with n=0n=0.

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

isConstinuousPrime(1, 41, 39)
isConstinuousPrime(-79, 1601, 79)
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
ggg  = filter(aa , ggg)

ag = ggg[1]
for gg in ggg
  if ag[3] < gg[3]
    ag = gg
  end
end
println(ag[1]*ag[2])
