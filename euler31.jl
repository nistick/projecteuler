coins = [1, 2, 5, 10, 20, 50, 100, 200]
reverse!(coins)
checksum(i) = sum(i.*coins)>200 ? false : true
count = 0
for a in 0:1
  println("A is $a")
  for b in 0:2
    println("B is $b")
    i = [a, b, 0, 0, 0, 0, 0, 0]
    if !checksum(i)
      break
    end
    for c in 0:4
      println("C is $c")
      i = [a,b,c, 0, 0, 0, 0, 0]
      if ! checksum(i)
        break
      end
      for d in 0:10
        println("")
        i = [a, b, c, d, 0, 0, 0, 0]
        if !checksum(i)
          break
        end
        for e in 0:20
          i = [a, b, c, d, e, 0, 0, 0]
          if !checksum(i)
            break
          end
          for f in 0:40
            i = [a,b,c,d,e,f,0,0]
            if !checksum(i)
              break
            end
            for g in 0:100
              i = [a,b,c,d,e,f,g,0]
              if ! checksum(i)
                break
              end
              for h in 0:200
                i = [a, b, c, d, e, f, g, h]
                if !checksum(i)
                  break
                end
                if sum(i .* coins) == 200
                  count += 1
                end
              end
            end
          end
        end
      end
    end
  end
end
println(count)
