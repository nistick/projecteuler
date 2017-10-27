# Digit factorial chains
# Problem 74
# The number 145 is well known for the property that the sum of the factorial of its digits is equal to 145:
#
# 1! + 4! + 5! = 1 + 24 + 120 = 145
#
# Perhaps less well known is 169, in that it produces the longest chain of numbers that link back to 169; it turns out that there are only three such loops that exist:
#
# 169 → 363601 → 1454 → 169
# 871 → 45361 → 871
# 872 → 45362 → 872
#
# It is not difficult to prove that EVERY starting number will eventually get stuck in a loop. For example,
#
# 69 → 363600 → 1454 → 169 → 363601 (→ 1454)
# 78 → 45360 → 871 → 45361 (→ 871)
# 540 → 145 (→ 145)
#
# Starting with 69 produces a chain of five non-repeating terms, but the longest non-repeating chain with a starting number below one million is sixty terms.
#
# How many chains, with a starting number below one million, contain exactly sixty non-repeating terms?

function digitfactorial(x)
    y = string(x)
    sum([factorial(parse(Int, z)) for z in y])
end

function digitfactorialchain(x)
    gChain = Dict(169=>3, 871=>2, 872=>2)
    count = 0
    while true && count < 65
        newX = digitfactorial(x)
        if x == newX
            count += 1
            break
        end
        if length(find(x->x==newX, keys(gChain))) != 0
            count += gChain[newX]
            break
        end
        count += 1
        x = newX
    end
    count
end

function main()
    count = 0
    for i in 1:1000000
        if digitfactorialchain(i) >= 59
            count += 1
            # println("$i : $(digitfactorialchain(i))")
        end
    end
    count
end

@time println(main())
