gg = []

for a in 2:100
  for b in 2:100
    push!(gg, BigInt(a)^BigInt(b))
  end
end

gg = Set(gg)
println(length(gg))
