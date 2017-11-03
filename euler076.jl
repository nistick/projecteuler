# Counting summations
# Problem 76
# It is possible to write five as a sum in exactly six different ways:
#
# 4 + 1
# 3 + 2
# 3 + 1 + 1
# 2 + 2 + 1
# 2 + 1 + 1 + 1
# 1 + 1 + 1 + 1 + 1
#
# How many different ways can one hundred be written as a sum of at least two positive integers?

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
        if k >= strike
            res += x[k]
        end
    end
    Int(res)
end

function main(N)
    res = Dict()
    res[1] = Dict(1=>1)
    res[2] = Dict(1=>1, 2=>1)
    for x in 3:N
        half = Int(floor(x/2))
        res[x] = Dict(x=>1)
        for y in 1:half
            res[x][y] = dictValueSum(res[x-y], y)
        end
        if x == N
            return dictSum(res[x])-1
        end
    end
end

@time println(main(100))
