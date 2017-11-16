# Digit cancelling fractions
# Problem 33
# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.
#
# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
#
# There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.
#
# If the product of these four fractions is given in its lowest common terms, find the value of the denominator.


function main()
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
    denominator(result)
end

@time println(main())
