length(factor(14))


for x in 2:100000000
  xx = x:x+3
  yy = [length(factor(y)) for y in xx]
  if mean(yy) == 4
    println(x)
    break
  end
end
