using Combinatorics


idx = 344
ppp = Dict()

function makemaximumperm(n)
    join(sort([x for x in string(n)]))
end

while true
    key = makemaximumperm(idx^3)
    if haskey(ppp, key)
        ppp[key][2] += 1
    else
        ppp[key] = [idx, 1]
    end
    if ppp[key][2] == 5
        println("$(ppp[key])")
        break
    end
    idx += 1
    if idx >50000
        println("idx : $idx")
        break
    end
end

println(5027^3)
