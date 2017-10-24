function heron(a, b, c)
    s = (a+b+c)/2
    Int(sqrt(s*(s-a)*(s-b)*(s-c)))
end

function aet(n)
    ret = 0
    if 3n-1 <10^9
        try
            heron(n, n, n-1)
            ret = 3n-1
        catch
            ret = 0
        end
    end
    if 3n +1 < 10^9
        try
            heron(n, n, n+1)
            ret = ret + 3n+1
        catch
            ret = ret
        end
    end
    return ret
end

n = 100000000
println(sum(aet.(2:n)))


# n = 100
# @time println(sum(aet.(2:n)))
9799423989854270
