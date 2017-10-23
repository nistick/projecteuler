using Combinatorics
ispandigital(x) = sort(x) == Array{Int}(0:9)
pans = collect(filter(ispandigital, permutations(0:9)))
function number(theDigits)
    counter = 0
    for i = 1:length(theDigits)
        counter *= 10
        counter += theDigits[i]
    end
    counter
end
sss = 0
for x in pans
  if x[1] == 0
    continue
  end
  if number(x[2:4]) % 2 == 0 &&
    number(x[3:5]) % 3 == 0 &&
    number(x[4:6]) % 5 == 0 &&
    number(x[5:7]) % 7 == 0 &&
    number(x[6:8]) % 11 == 0 &&
    number(x[7:9]) % 13 == 0 &&
    number(x[8:10]) % 17 == 0
      sss += number(x)
    end
end
println(sss)
