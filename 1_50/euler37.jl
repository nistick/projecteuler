using Primes
import Primes: isprime

a = 3797

div(a, 10)
nctp = [2, 3, 5, 7]
function isleftTruncatablePrime(x)
  xValue = x
  while true
    if !isprime(xValue)
      return false
    end
    xValue = div(xValue, 10)
    if xValue < 10
      return xValue in nctp ? true : false
    end
  end
end

rem(a, 10^Int(floor(log10(a))))
10^(log10(a) - floor(log10(a)))

function isrightTruncatablePrime(x)
  xValue = x
  while true
    println(xValue)
    if !isprime(xValue)
      return false
    end
    xValue = rem(xValue, 10^Int(floor(log10(xValue))))
    if xValue < 10
      return xValue in nctp ? true : false
    end
  end
end

isleftTruncatablePrime(3797)
isrightTruncatablePrime(3797)
tp = []
length(tp)
idx = 11
while length(tp) != 11
  if isleftTruncatablePrime(idx) && isrightTruncatablePrime(idx)
    println(tp)
    push!(tp, idx)
  end
  idx+=1
end

sum(tp)
