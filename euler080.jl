# Square root digital expansion
# Problem 80
# It is well known that if the square root of a natural number is not an integer, then it is irrational. The decimal expansion of such square roots is infinite without any repeating pattern at all.
#
# The square root of two is 1.41421356237309504880...,
# and the digital sum of the first one hundred decimal digits is 475.
#
# For the first one hundred natural numbers, find the total of the digital sums of the first one hundred decimal digits for all the irrational square roots.

function squareroot(n::BigInt, digit::BigInt)
    limit = BigInt(10)^(digit+1)
    a = BigInt(5) * n
    b = BigInt(5)
    while b < limit
        if a >= b
            a-=b
            b+=BigInt(10)
        else
            a*=BigInt(100)
            b=(b-5)*10+5
        end
    end
    return string(b)[1:end-2]
end
sumValue = 0.0
j = 1
for i in 1:100
    if i == j^2
        println(i)
        j+=1
        continue
    end
    sumValue += [parse(Int,i) for i in squareroot(BigInt(i), BigInt(100))] |> sum
end
println(sumValue)
