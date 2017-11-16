isTriangle(x) = isinteger((-1+sqrt(1+8x))/2)
isPentagonal(x) = isinteger((sqrt(24x+1)+1)/6)
isHexagonal(x) = isinteger((1+sqrt(1+8x))/4)
hexagonal(n) = n*(2n-1)

for i in 144:100000
  hex = hexagonal(i)
  if isTriangle(hex) && isPentagonal(hex)
    println(hex)
  end
end
