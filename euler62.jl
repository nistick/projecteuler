using Combinatorics

function makemaximumperm(n)
    join(sort([x for x in string(n)]))
end
function main()
    idx = 344
    ppp = Dict()
    while true
        key = makemaximumperm(idx^3)
        if haskey(ppp, key)
            ppp[key][2] += 1
        else
            ppp[key] = [idx, 1]
        end
        if ppp[key][2] == 5
            println("$(ppp[key])")
            return ppp[key]
            break
        end
        idx += 1
        if idx >50000
            println("idx : $idx")
            break
        end
    end
end
@time main()
