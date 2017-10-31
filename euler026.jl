# Reciprocal cycles
# Problem 26
# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
#
# 1/2	= 	0.5
# 1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.
#
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
using Primes

function primeperiod(x)
  for i in 1:x
    if 10^i%x==1
      return i
    end
  end
end

function repeatdecimal(x)
  ft = factor(x)
  if issubset(Set(keys(ft)) , Set([2, 5]))
    return 0
  end
  if isprime(x)
    return primeperiod(x)
  end
  idx = []
  for k in keys(ft)
    if k == 2 || k == 5
      continue
    end
    println("k : $k")
    push!(idx, k^(ft[k]-1)*primeperiod(k))
  end
  lcm(idx...)
end

repeatdecimal(12)

println(factor(28))
ft = factor(28)
ft[2]
ft
for x in keys(ft)
  println(x)
end
