# Coin partitions
# Problem 78
# Let p(n) represent the number of different ways in which n coins can be separated into piles. For example, five coins can be separated into piles in exactly seven different ways, so p(5)=7.
#
# OOOOO
# OOOO   O
# OOO   OO
# OOO   O   O
# OO   OO   O
# OO   O   O   O
# O   O   O   O   O
# Find the least value of n for which p(n) is divisible by one million.
using Primes

function main(N)
    res = zeros(N+1)
    res[1] = 1
    println(res)
    for i in 2:N
        for j in i:N+1
            res[j] += res[j-i+1]
        end
        println("$i, $res")
    end
    BigInt(res[end])
end

@time println(main(4))
