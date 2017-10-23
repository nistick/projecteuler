a = "123456789"
zeroStr = "0"
zeroSet = Set(['0'])
lll = Set([i for i in a])
ret = []
for a in 1:9
  for b in 1000:9999
    c = a*b
    str_a = string(a)
    str_b = string(b)
    str_c = string(c)
    str_sum = str_a * str_b * str_c
    if length(str_sum) != 9
      continue
    end
    tSet = Set([i for i in str_sum])
    cc = intersect(tSet, lll)
    d = setdiff(cc, zeroSet)
    if length(d) == 9
      push!(ret, c)
      println(str_sum)
    end
  end
end
for a in 10:99
  for b in 100:999
    c = a*b
    str_a = string(a)
    str_b = string(b)
    str_c = string(c)
    str_sum = str_a * str_b * str_c
    if length(str_sum) != 9
      continue
    end
    tSet = Set([i for i in str_sum])
    cc = intersect(tSet, lll)
    d = setdiff(cc, zeroSet)
    if length(d) == 9
      push!(ret, c)
      println(str_sum)
    end
  end
end
ret = Set(ret)
println(sum(ret))
# a = 39
# b = 186
# c = a*b
# str_a = string(a)
# str_b = string(b)
# str_c = string(c)
# str_sum = str_a * str_b * str_c
# println(length(str_sum))
# tSet = Set([i for i in str_sum])
# c = intersect(tSet, b)
# d = setdiff(c, zeroSet)
# println(d)
# if length(d) == 9
#   println(str_sum)
# end
