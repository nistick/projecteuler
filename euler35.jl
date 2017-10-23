using Primes
import Primes: isprime

n = 197
strN = string(n)
newStr = strN[2:end]*strN[1:1]
intN = parse(Int, newStr)
isprime(intN)

function isCircular(n)
  strN = string(n)
  for i in 1:length(strN)
    newStr = strN[2:end]*strN[1:1]
    intN = parse(Int, newStr)
    if !isprime(intN)
      return false
    end
    strN = newStr
  end
  true
end

isCircular(197)
cc = 0
for i in 2:1000000
  if isCircular(i)
    cc += 1
  end
end
println(cc)
