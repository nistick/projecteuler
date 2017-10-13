using Primes

ori = [1]

for i in 1:100000
    a = ones(Int, 4)*Int(ori[end])
    println(a)
    for j in 1:4
        a[j] = a[j] + i*2*j
    end
    ori = vcat(ori, a)
    bprimes = Primes.isprime.(ori)
    fran = sum(bprimes) / length(bprimes)
    if fran < 0.1
        println("$i : $fran")
        break
    else
        println("$i : $fran")
    end
end
