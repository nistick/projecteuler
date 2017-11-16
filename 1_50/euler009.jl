# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a² + b² = c²
# For example, 3² + 4² = 9 + 16 = 25 = 5².
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

function isPythagoreanTriplet(a, b, c)
    if a^2 + b^2 == c^2
        return true
    end
    return false
end

function main()
    for c = 997:-1:3
        for b = 1:1000-(c+1)
            a = 1000 - b - c
            if isPythagoreanTriplet(a, b, c)
                return a, b, c
            end
        end
    end
end

@time println(prod(main()))
