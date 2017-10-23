fp = open("p042_words.txt")
ss = readline(fp)
close(fp)
ss = split(ss, ',')
checkvalue(x) = sum([gg - '@' for gg in x])
triangle = [n*(n+1)/2 for n in 1:10000]
count = 0
for s in ss
  s = replace(s, "\"", "")
  x = checkvalue(s)
  if x in triangle
    count += 1
    println("$s -> Value : $x -> triangle")
  end
end
