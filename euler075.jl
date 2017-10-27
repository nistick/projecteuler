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

function checkPythago(a::Int, b::Int, c::Int)
    if a+b <= c
        return false
    end
    if a^2 + b^2 == c^2
        return true
    else
        return false
    end
end

function main()
    gCount = 0
    for L = 12:1500000
        count = 0
        for a = 1:L-2
            for b = a:L-a-1
                c = L - a - b
                if checkPythago(a, b, c)
                    count += 1
                    # println("a: $a, b: $b, c: $c => $(a^2+b^2) == $(c^2)")
                end
            end
        end
        if count == 1
            # println("L : $L")
            gCount += 1
        end
    end
    gCount
end

@time println(main())
