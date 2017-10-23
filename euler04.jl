palindrome(num) = string(num) == reverse(string(num))

palindrome_products_of_digits(n) = filter(palindrome,
  unique(vec([i*j for i = 1:(10^n -1 ), j = 1:(10^n - 1)])))

@assert(max(palindrome_products_of_digits(2)...) == 9009,
  "Failed example calculation.")

println(max(palindrome_products_of_digits(3)...))
