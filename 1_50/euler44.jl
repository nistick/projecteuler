Pn(n) = div(n*(3n-1),2)
ispentagonal(n) = isinteger((sqrt(24n+1)+1)/6)

function solve044()
    Solution = false
    j = 1
    while !Solution
        for k = j-1:-1:1
            if ispentagonal(Pn(j)-Pn(k)) && ispentagonal(Pn(j)+Pn(k))
                return(Pn(j)-Pn(k))
            end
        end
    j += 1
    end
end

println(solve044())
