# 1000-digit Fibonacci number
# Problem 25
# The Fibonacci sequence is defined by the recurrence relation:
#
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
#
# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

fibo = [BigInt(1), BigInt(1)]
function fibonacci(n)
  if length(fibo)<n
    push!(fibo, fibonacci(n-1) + fibonacci(n-2))
  end
  return fibo[n]
end

function main()
  idx = BigInt(1)
  dig  = BigInt(1)
  while true
    a = fibonacci(idx)
    if BigInt(10)^BigInt(dig) <a
      dig += 1
    end
    if BigInt(10)^BigInt(999) < a
      return idx
    end
    idx += 1
  end
end

@time println(main())
