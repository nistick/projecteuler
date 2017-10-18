function counts(n)
    lower = 10^(n-1)
    upper = 10^n
    nl = floor(lower^(1/n))
    nu = round(upper^(1/n))

    println("nu = $nu, nl = $nl, $(nu - nl)")
    nu - nl
end

counts(5)
