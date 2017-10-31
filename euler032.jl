# Pandigital products
# Problem 32
# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.
#
# The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.
#
# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
#
# HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

function main()
  a = "123456789"
  zeroStr = "0"
  zeroSet = Set(['0'])
  lll = Set([i for i in a])
  ret = []
  for a in 1:9
    for b in 1000:9999
      c = a*b
      str_a = string(a)
      str_b = string(b)
      str_c = string(c)
      str_sum = str_a * str_b * str_c
      if length(str_sum) != 9
        continue
      end
      tSet = Set([i for i in str_sum])
      cc = intersect(tSet, lll)
      d = setdiff(cc, zeroSet)
      if length(d) == 9
        push!(ret, c)
      end
    end
  end
  for a in 10:99
    for b in 100:999
      c = a*b
      str_a = string(a)
      str_b = string(b)
      str_c = string(c)
      str_sum = str_a * str_b * str_c
      if length(str_sum) != 9
        continue
      end
      tSet = Set([i for i in str_sum])
      cc = intersect(tSet, lll)
      d = setdiff(cc, zeroSet)
      if length(d) == 9
        push!(ret, c)
      end
    end
  end
  ret = Set(ret)
  sum(ret)
end

@time println(main())
