# Digit fifth powers
# Problem 30
# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#
# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.
# 
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

function main()
  res = 0
  for i in 2:9999999
    ret = 0
    for x in string(i)
      x = parse(Int, x)
      ret += x^5
    end
    if ret == i
      res += i
    end
  end
  res
end

@time println(main())
