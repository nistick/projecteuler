alphabetOffset = Int('A')-1
names = readcsv("p022_names.txt", String)
names = sort(names, 1)
function priceName(name)
    ret = 0
    for s in name
        ret += Int(s) - alphabetOffset
    end
    return ret
end

priceName("COLIN")
price = 0
for (i, name) in enumerate(names)
    price += i * priceName(name)
end
println(price)
