# Prime summations
# Problem 77
# It is possible to write ten as the sum of primes in exactly five different ways:
#
# 7 + 3
# 5 + 5
# 5 + 3 + 2
# 3 + 3 + 2 + 2
# 2 + 2 + 2 + 2 + 2
#
# What is the first value which can be written as the sum of primes in over five thousand different ways?
using Primes

function main(N)
    res = zeros(N+1)
    res[1] = 1
    for i in 2:N
        for j in i:N+1
            res[j] += res[j-i+1]
        end
        println("$i, $res")
    end
    BigInt(res[end])
end

@time println(main(6))
