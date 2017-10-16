using Combinatorics

P3(n) = Int(n*(n+1)/2)
P4(n) = Int(n^2)
P5(n) = Int(n*(3n-1)/2)
P6(n) = Int(n*(2n-1))
P7(n) = Int(n*(5n-3)/2)
P8(n) = n*(3n-2)

x = 1:5

println(P3.(x))
println(P4.(x))
println(P5.(x))
println(P6.(x))
println(P7.(x))
println(P8.(x))

x = 1:200
N3 = filter(x->x>1000 && x<10000, P3.(x))
N4 = filter(x->x>1000 && x<10000, P4.(x))
N5 = filter(x->x>1000 && x<10000, P5.(x))
N6 = filter(x->x>1000 && x<10000, P6.(x))
N7 = filter(x->x>1000 && x<10000, P7.(x))
N8 = filter(x->x>1000 && x<10000, P8.(x))
Ns = [N3, N4, N5, N6, N7, N8]
function findit(M3, M4, M5, M6, M7, M8)
    for a in M3
        a1 = string(a)[1:2]
        a2 = string(a)[3:4]
        for b in M4
            b1 = string(b)[1:2]
            b2 = string(b)[3:4]
            if a2 != b1
                continue
            end
            for c in M5
                c1 = string(c)[1:2]
                c2 = string(c)[3:4]
                if b2 != c1
                    continue
                end
                for d in M6
                    d1 = string(d)[1:2]
                    d2 = string(d)[3:4]
                    if c2 != d1
                        continue
                    end
                    for e in M7
                        e1 = string(e)[1:2]
                        e2 = string(e)[3:4]
                        if d2 != e1
                            continue
                        end
                        for f in M8
                            f1 = string(f)[1:2]
                            f2 = string(f)[3:4]
                            if e2 != f1
                                continue
                            end
                            if f2 == a1
                                println("$a + $b + $c + $d + $e + $f = $(a+b+c+d+e+f)")
                                exit()
                            end
                        end
                    end
                end
            end
        end
    end
end

for scram in permutations(Ns, 6)
    findit(scram[1], scram[2], scram[3], scram[4], scram[5], scram[6])
end
