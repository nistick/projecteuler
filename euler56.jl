x = BigInt(1):BigInt(100)
m = 0.0
for a in x
    for b in x
        c = a^b
        d = string(c)
        e = sum([Int(f)-48 for f in d])
        m = e > m ? e : m
        if m == e
            println("$c : $e : $m")
        end
    end
end
println(m)
