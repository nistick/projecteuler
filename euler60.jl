using Primes
using Combinatorics
import Primes:isprime

n = 30000
nbox = 2:n
primes = nbox[isprime.(nbox)]
primelen = length(primes)
pairs = []

function makepairs(a)
    pair = []
    for x in a+1:primelen
        if isprime(parse(Int, string(primes[a])string(primes[x]))) &&
            isprime(parse(Int, string(primes[x])string(primes[a])))
            push!(pair, primes[x])
        end
    end
    return pair
end

result = typemax(Int32)
println("$pairs")

aa = makepairs(1)
for a in 1:primelen
    if primes[a]*5 >= result
        break
    end
    if length(pairs) < a
        push!(pairs, makepairs(a))
    end
    for b in a+1:primelen
        if primes[a]+primes[b]*4 >= result
            break
        end
        if length(pairs) < b
            push!(pairs, makepairs(b))
        end
        if !(primes[b] in pairs[a])
            continue
        end
        for c in b+1:primelen
            if primes[a] + primes[b] + primes[c]*2 >=result
                break
            end
            if length(pairs)<c
                push!(pairs, makepairs(c))
            end
            if !(primes[c] in pairs[a] && primes[c] in pairs[b])
                continue
            end
            for d in c+1:primelen
                if primes[a]+primes[b] +primes[c] + primes[d]*2 >= result
                    break
                end
                if length(pairs)<d
                    push!(pairs, makepairs(d))
                end
                if !(primes[d] in pairs[a] && primes[d] in pairs[b] && primes[d] in pairs[c])
                    continue
                end
                for e in d+1:primelen
                    if primes[a]+primes[b]+primes[c]+primes[d]+primes[e]>=result
                        break
                    end
                    if length(pairs)<e
                        push!(pairs, makepairs(e))
                    end
                    if !(primes[e] in pairs[a] && primes[e] in pairs[b] && primes[e] in pairs[c] && primes[e] in pairs[d])
                        continue
                    end
                    if result > primes[a] + primes[b] +primes[c]+primes[d]+primes[e]
                        result = primes[a] + primes[b] +primes[c]+primes[d]+primes[e]
                    end
                    println("$(primes[a]), $(primes[b]), $(primes[c]), $(primes[d]), $(primes[e]) : $result")
                    break
                end
            end
        end
    end
end
