idx = 0
for n in 1:25
    println(idx)
    println(Int(ceil(BigInt(10)^((n-1)/n))))
    idx += max(10 - Int(ceil(BigInt(10)^((n-1)/n))), 0.0)
end

println(idx)
