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

function main(N)
    res = zeros(N+1)
    res[1] = 1
    for i in 2:N
        for j in i:N+1
            res[j] += res[j-i+1]
        end
        println(res)
    end
    BigInt(res[end])
end

@time println(main(6))
