fibo = [BigInt(1), BigInt(1)]
function fibonacci(n)
  if length(fibo)<n
    push!(fibo, fibonacci(n-1) + fibonacci(n-2))
  end
  return fibo[n]
end

fibonacci(30)

fib(n) = n > 2 ? fib(n-1) + fib(n-2) : 1
idx = BigInt(1)
dig  = BigInt(1)
while true
  a = fibonacci(idx)
  if BigInt(10)^BigInt(dig) <a
    println("length : $dig")
    println("value : $a")
    dig += 1
  end
  if BigInt(10)^BigInt(999) < a
    println("Index : $idx")
    println("Value : $a")
    break
  end
  idx += 1
end
  
