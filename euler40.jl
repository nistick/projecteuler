function main()
  ar = Array{Int64}(0)
  for i in 1:1000000
    append!(ar, reverse(digits(i)))
  end
  println(ar[1]*ar[10]*ar[100]*ar[1000]*ar[10000]*ar[100000]*ar[1000000])
end

@time main()
