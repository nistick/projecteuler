# Non-abundant sums
# Problem 23
# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

using Primes

import Primes: factor
d(n) = Int(prod([(k^(v+1)-1)/(k-1) for (k, v) in factor(n)]) - n)
function isAbundant(n)
    if n < d(n)
      return true
    end
    return false
  end

  function main()
  abundants = Int64[]
  for i in 1:28123
    if isAbundant(i)
      push!(abundants, i)
    end
  end
  abundants
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
end

@time println(main())
