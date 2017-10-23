main() = begin
  x = Array{Int}(1:6)
for i in 1:1000000
  if length(Set([sort(digits(a)) for a in x*i])) == 1
    println(i)
    break
  end
end
end

@time main()
