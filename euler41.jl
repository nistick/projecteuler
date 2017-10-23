using Primes

import Primes: primes

function isPandigital(n::Int)
    sort!(digits(n)) == Array(1:length(digits(n)))
end



gg = primes(1000000000)
pp = filter(isPandigital, gg)
println(max(filter(isPandigital, gg)...))
