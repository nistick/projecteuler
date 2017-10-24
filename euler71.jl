res = []
for d = BigInt(2):BigInt(10)^7
    for n = BigInt(1):BigInt(d)-1
        if gcd(n, d) == 1 && 428571/10^6 < n/d < 428572/10^6
            push!(res, [n, d])
        end
    end
end
println(res)
