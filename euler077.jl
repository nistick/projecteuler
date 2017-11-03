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

function dictSum(x)
    res = 0.0
    for k in keys(x)
        res += x[k]
    end
    Int(res)
end

function dictValueSum(x, strike)
    res = 0.0
    for k in keys(x)
        if k >= strike && isprime(k)
            res += x[k]
        end
    end
    Int(res)
end

function main(N)
    res = Dict()
    res[1] = Dict()
    res[2] = Dict(2=>1)
    res[3] = Dict(3=>1)
    x = 4
    while true
        half = Int(floor(x/2))
        if isprime(x)
            res[x] = Dict(x=>1)
        else
            res[x] = Dict()
        end
        for y in 2:half
            if isprime(y)
                res[x][y] = dictValueSum(res[x-y], y)
            end
        end
        if dictSum(res[x]) >= N
            println(res[x])
            return x
        end
        x += 1
    end
end

println(main(5000))
