Pkg.add("Primes.jl")

using Primes
import Primes: primes, isprime
println(primes(10))

numPrime = 1
idx = 2
numPrime != 13 && idx < 50
while numPrime != 10002
    println(idx)
    if isprime(idx)
        println("$idx is $numPrime th Prime Number")
        numPrime += 1
    end
    idx +=1
end
