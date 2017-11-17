# Consecutive prime sum
# Problem 50
# The prime 41, can be written as the sum of six consecutive primes:
#
# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
#
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
#
# Which prime, below one-million, can be written as the sum of the most consecutive primes?
using Primes

function main(N)
    d = filter(isprime, 1:N)
    len = length(d)
    for i in len:-1:1
        for j in 1:len+1-i
            sv = sum(d[j:j+i-1])
            if sv > N
                break
            end
            if isprime(sv)
                return sv
            end
        end
    end
end

@time println(main(1000000))
