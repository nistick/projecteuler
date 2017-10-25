# Ordered fractions
# Problem 71
# Consider the fraction, n/d, where n and d are positive integers. If n<d and HCF(n,d)=1, it is called a reduced proper fraction.
#
# If we list the set of reduced proper fractions for d ≤ 8 in ascending order of size, we get:
#
# 1/8, 1/7, 1/6, 1/5, 1/4, 2/7, 1/3, 3/8, 2/5, 3/7, 1/2, 4/7, 3/5, 5/8, 2/3, 5/7, 3/4, 4/5, 5/6, 6/7, 7/8
#
# It can be seen that 2/5 is the fraction immediately to the left of 3/7.
#
# By listing the set of reduced proper fractions for d ≤ 1,000,000 in ascending order of size, find the numerator of the fraction immediately to the left of 3/7.

d = 1000000
k = 2/5
res = [d, 1]
for i in 2:d
  for j in 1:i-1
    if j/i > k
      if (j-1)/i == k
        break
      end
      if res[2]/res[1] < (j-1)/i
        res = [i, j-1]
      end
      break
    end
  end
end
println(res)