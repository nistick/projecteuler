using Primes
import Primes: factor
d(n) = Int(prod([(k^(v+1)-1)/(k-1) for (k, v) in factor(n)]) - n)

function isAmicable(n, limi)
    amicable = d(n)
    if amicable == n
        return false
    end
    if n == dd(amicable)
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
