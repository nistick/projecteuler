using Primes
using Combinatorics
import Primes:isprime

n = 30000
nbox = 2:n
primes = nbox[isprime.(nbox)]
primelen = length(primes)
pairs = []

function makepairs(a)
    # println("Function Call Make Pairs [$a]")
    pair = []
    for x in a+1:primelen
        # println("a = $a : x = $x")
        # println("primes[a] = $(primes[a]) : primes[x] = $(primes[x])")
        if isprime(parse(Int, string(primes[a])string(primes[x]))) &&
            isprime(parse(Int, string(primes[x])string(primes[a])))
            push!(pair, primes[x])
        end
    end
    return pair
end

result = typemax(Int32)
println("$pairs")
# index = 1

aa = makepairs(1)
for a in 1:primelen
    # println("="^30)
    # println("="^30)
    # println("a = $a, primes[$a] = $(primes[a])")
    if primes[a]*5 >= result
        # println("$(primes[a]) * 5 = $(primes[a]*5)")
        break
    end
    if length(pairs) < a
        # println("Make Pairs of [$a]")
        push!(pairs, makepairs(a))
    end
    for b in a+1:primelen
        # println("b = $b, primes[$b] = $(primes[b])")
        if primes[a]+primes[b]*4 >= result
            break
        end
        if length(pairs) < b
            # println("Make Pairs of [$b]")
            push!(pairs, makepairs(b))
        end
        if !(primes[b] in pairs[a])
            # println("$(primes[b]) is not in pairs[$a]")
            continue
        end
        for c in b+1:primelen
            # println("c = $c, primes[$c] = $(primes[c])")
            if primes[a] + primes[b] + primes[c]*2 >=result
                break
            end
            if length(pairs)<c
                # println("Make Pairs of [$c]")
                push!(pairs, makepairs(c))
            end
            if !(primes[c] in pairs[a] && primes[c] in pairs[b])
                # println("$(primes[c]) is not in pairs[$a]")
                # println("$(primes[c]) is not in pairs[$b]")
                continue
            end
            for d in c+1:primelen
                # println("d = $d, primes[$d] = $(primes[d])")
                if primes[a]+primes[b] +primes[c] + primes[d]*2 >= result
                    break
                end
                if length(pairs)<d
                    # println("Make Pairs of [$d]")
                    push!(pairs, makepairs(d))
                end
                if !(primes[d] in pairs[a] && primes[d] in pairs[b] && primes[d] in pairs[c])
                    # println("$(primes[d]) is not in pairs[$a]")
                    # println("$(primes[d]) is not in pairs[$b]")
                    # println("$(primes[d]) is not in pairs[$c]")
                    continue
                end
                for e in d+1:primelen
                    # println("e = $e, primes[$e] = $(primes[e])")
                    if primes[a]+primes[b]+primes[c]+primes[d]+primes[e]>=result
                        break
                    end
                    if length(pairs)<e
                        # println("Make Pairs of [$e]")
                        push!(pairs, makepairs(e))
                    end
                    if !(primes[e] in pairs[a] && primes[e] in pairs[b] && primes[e] in pairs[c] && primes[e] in pairs[d])
                        # println("$(primes[e]) is not in pairs[$a]")
                        # println("$(primes[e]) is not in pairs[$b]")
                        # println("$(primes[e]) is not in pairs[$c]")
                        # println("$(primes[e]) is not in pairs[$d]")
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
