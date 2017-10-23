checkpythagorean(x) = x[0]^2+x[1]^2==x[2]^2 || x[1]^2+x[1]^2==x[0]^2 || x[2]^2+x[0]^2==x[1]^2
checkSum(x) = x[0]+x[1]+x[2]==1000
checkcond(x) = checkSum(x) && checkpythagorean(x)
aa = filter(checkcond, [[i, j, k] for i = 1:1000, j=1:1000, k=1:1000])
println(aa)


function isPythagoreanTriplet(a, b, c)
    if a^2 + b^2 == c^2
        return true
    end
    return false
end

function main()
    for c = 997:-1:3
        for b = c-1:-1:2
            for a = b-1:-1:1
                if a + b + c == 1000 && isPythagoreanTriplet(a, b, c)
                    println(a*b*c)
                    return
                end
            end
        end
    end
end

println(@elapsed main())
