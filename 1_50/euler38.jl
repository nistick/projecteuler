g = 1:3
N = 192
ss = ""
for x in N .* g
  ss *= string(x)
end
"2" in string(ss)
contains(string(ss), "2")
function is9pandigital(x)
  if length(x) != 9
    return false
  end
  for i in 1:9
    if !contains(x, string(i))
      return false
    end
  end
  return true
end

for n in 2:999
  for x in 1:10000
    ss = ""
    gg = 1:n
    for z in x .* gg
      ss *= string(z)
    end
    if is9pandigital(ss)
      println("N = $x, n = $n, pan = $ss")
      break
    end
  end
end


function number(theDigits)
    counter = 0
    for i = length(theDigits):-1:1
        counter *= 10
        counter += theDigits[i]
    end
    counter
end

function isPandigital(n::Int)

    sort!(digits(n)) == [1:length(digits(n))]

end

function solve038()

    for i = 9876:-1:9123

       theNumber = number([digits(2*i),digits(i)])

        if isPandigital(theNumber)
            println("I is $i, $theNumber")
            return(theNumber)
        end
    end

end

digits(9543)

solve038()
