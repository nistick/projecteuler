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


function dictSum(x)
    res = BigInt(0)
    for k in keys(x)
        res += x[k]
    end
    res
end

function dictValueSum(x, strike)
    res = BigInt(0)
    for k in keys(x)
        if k >= strike
            res += x[k]
        end
    end
    res
end

function main(N)
    res = Dict()
    res[1] = Dict(1=>1)
    res[2] = Dict(1=>1, 2=>1)
    x = Int(3)
    while true
        try
            half = BigInt(floor(x/2))
            res[x] = Dict(x=>1)
            for y in 1:half
                res[x][y] = dictValueSum(res[x-y], y)
            end
            result = dictSum(res[x])
            # println("="^30)
            # println("x : $x, result : $result, dict: $(res[x])")
            if result % N == 0
                return x, result,  res[x]
            end
            x += 1
        catch

        end
    end
end

# @time println(main(1000000))
@time println(main(100))
