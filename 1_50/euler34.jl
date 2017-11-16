for i in 3:10
  sInt = string(i)
  res = sum([factorial(parse(Int,x)) for x in sInt])
  if res == i
    println(res)
  end
end
