function collatzsequence(x)
  if x == 1
    return 1
  end
  if iseven(x)
    return collatzsequence(convert(Int, x/2)) + 1
  else
    return collatzsequence(3*x + 1) +1
  end
end

println(collatzsequence(13))
println(findmax([collatzsequence(x) for x = 1:1000000]))
