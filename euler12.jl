using Primes
import Primes: factor

numberOfDivisor(x) = begin
  # println(x)
  target = collect(values(factor(x)))
  return prod(target + ones(target))-1
end

numberOfDivisor(21)

idx = 2
maxiter = 1000000
# maxiter = 50
prenod = 1
while true
# while idx < maxiter
  nod = numberOfDivisor(sum(1:idx))
  if prenod < nod
    println("new record $nod")
    prenod = nod
  end
  # println("$idx : $nod")
  if nod >= 500
    println(sum(1:idx))
    println(idx)
    break
  end
  # println(numberOfDivisor(idx))
  idx += 1
  if idx % maxiter == 0
    println("Iteration is $idx")
  end
end
