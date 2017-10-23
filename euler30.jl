res = 0
for i in 2:9999999
  ret = 0
  for x in string(i)
    x = parse(Int, x)
    ret += x^5
  end
  if ret == i
    res += i
    println(i)
  end
end

println(res)
