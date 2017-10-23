
10 % 7
3*10 % 7
2*10 % 7
6*10 % 7
4*10 % 7
5*10 % 7
1*10 % 7

function recurring(n)
  nu = 10
  fire = nu % n
  if fire == 0
    return 0
  end
  nu = fire *10
  rec = 1
  while true
    rema = nu % n
    if rema == 0
      return 0
    elseif rema == fire
      return rec
    else
      rec += 1
    end
    nu = rema *10
  end
end

for i in 1:10
  println(recurring(i))
end
gggg = []
for i in 1:999
  if i % 2 == 0
    continue
  elseif i % 5 == 0
    continue
  end
  rrr = recurring(i)
  println("Index is $i")
  println("recurring is $rrr")
  push!(gggg, rrr)
end

max(gggg...)
max([recurring(i) for i in 1:99]...)
