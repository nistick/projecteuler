# Amicable numbers
# Problem 21
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.

using Primes
import Primes: factor
d(n) = Int(prod([(k^(v+1)-1)/(k-1) for (k, v) in factor(n)]) - n)

function isAmicable(n, limi)
    amicable = d(n)
    if amicable == n
        return false
    end
    if n == d(amicable)
        return true
    end
    return false
end
sum = 0
for i = 2:10000
    if isAmicable(Int(i), 10000)
        sum += i
    end
end
println(sum)
