using Combinatorics

result = Dict()
idx = 1
for x in permutations(1:10, 5)
    whole = Set(1:10)
    b = setdiff(whole , Set(x))
    different = []
    for i in 1:length(x)
        if i == length(x)
            push!(different, 11 - (x[i]+x[1]))
        else
            push!(different, 11 - (x[i] + x[i+1]))
        end
    end
    epoch = min(b...)
    meanepoch = min(different...)
    orderOuttter = different -meanepoch + epoch
    outter =  Set(orderOuttter)
    if outter == Set([6, 7, 8, 9, 10])
        println("x = $x\t outter = $orderOuttter\tdiff = $different")
        result[x] = different
    end
end
for (k, v) in result
    println("Key = $k")
    println("Value = $v")
end
