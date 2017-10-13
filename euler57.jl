a = BigInt(2)
b = BigInt(3)
count = 0
for i in 1:1000
    na = a+b
    nb = 2a+b
    cna = length(string(na))
    cnb = length(string(nb))
    if cnb > cna
        println("$cnb : $nb || $cna : $na || $(count+1)")
        count = count +1
    end
    a = na
    b = nb
end

println(a)
println(b)
println(count)
