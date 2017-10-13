aa = [79,59,12,2,79]

bb = [Int('x'), Int('o'), Int('r')]
Int('x')
f = open("cipher1.txt")
rl = readlines(f)
close(f)
rls = split(rl[1], ",")
gg = convert(String, rls[1])
xx = tryparse(Int, gg)
xx.value
convert(Int, string(rls[1]))
rls = [tryparse(Int, i).value for i in rls]

cc = 97:122
dd = []
for c in cc
    flag = true
    for (i, e) in enumerate(rls)
        # println("$e")
        # println("$i")
        # println("$(bb[i%3 != 0 ? i%3 : 3])")
        # a = e $ bb[i%3+1]
        a = e $ c
        if 97 <= a && a <= 122
            gg = a
            # println(a)
        else
            println("$c is What")
            flag = false
            break
        end
        # println(Char(a))
    end
    if flag
        push!(dd, c)
        println("$c is Good")
    end
end

dd
