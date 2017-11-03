# Singular integer right triangles
# Problem 75
# It turns out that 12 cm is the smallest length of wire that can be bent to
# form an integer sided right angle triangle in exactly one way, but there are many more examples.
#
# 12 cm: (3,4,5)
# 24 cm: (6,8,10)
# 30 cm: (5,12,13)
# 36 cm: (9,12,15)
# 40 cm: (8,15,17)
# 48 cm: (12,16,20)
#
# In contrast, some lengths of wire, like 20 cm, cannot be bent to form an integer sided right angle triangle,
# and other lengths allow more than one solution to be found; for example,
# using 120 cm it is possible to form exactly three different integer sided right angle triangles.
#
# 120 cm: (30,40,50), (20,48,52), (24,45,51)
#
# Given that L is the length of the wire, for how many values of L ≤ 1,500,000 can exactly
# one integer sided right angle triangle be formed?
using Primes

function factors(n)
    f = [one(n)]
    for (p,e) in factor(n)
        f = reduce(vcat, f, [f*p^j for j in 1:e])
    end
    return length(f) == 1 ? [one(n), n] : sort!(f)
end

function makePairs(L::Int)
    res = []
    bEnd = false
    n = 1
    while true
        m = n+1
        if 2*m*(m+n) > L
            break
        end
        cnt = 0
        while true
            if 2*m*(m+n) > L
                break
            end
            if gcd(m, n) != 1
                m += 1
                continue
            end
            if !(m%2==0 || n%2==0)
                m += 1
                continue
            end
            push!(res, [m, n])
            cnt += 1
            m += 1
        end
        if cnt == 0
            break
        end
        n += 1
    end
    return res
end

function getEpochPythag(pairs)
    res = []
    for p in pairs
        push!(res, 2*p[1]*(p[1]+p[2]))
    end
    res = sort(res)
    return res
end


function main()
    MaxL = 150000
    gList = getEpochPythag(makePairs(MaxL))
    res = Set()
    for g = gList
        maxg = round(MaxL/g)
        gm = Set(filter(x->x<=MaxL, 1:maxg.*g))
        res = union(res, gm)
    end
    res
end

@time println(main())
