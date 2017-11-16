ret = 1
for i in 3:2:1001
  d = i-1
  e = sum([i^2, i^2-d, i^2-2d, i^2-3d])
  ret += e
end
println(ret)
