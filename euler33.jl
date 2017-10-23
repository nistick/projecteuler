function solve033()
    result = 1
    for a = 1:9
        for b = 1:9
            for c = 1:9
                if ( (10*a+b)//(10*b+c) == a//c ) && ( a//c < 1 )
                    #println("$a$b / $b$c")
                    result *= (10*a+b)//(10*b+c)
                end
            end
        end
    end
    println(denominator(result))
end

solve033()
