f = open("p067_triangle.txt")
a = readlines(f)
b = []
for x in a
    push!(b, [parse(Int, y) for y in split(x)])
end
reverse!(b)
prevalue = b[1]
for x in b[2:end]
    value = x
    for (i,v) in enumerate(x)
        value[i] += max(prevalue[i], prevalue[i+1])
    end
    prevalue = value
end
println(max(prevalue...))
