# Number letter counts
# Problem 17
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

function main()
    d = Dict(
        1 => length("one"),
        2 => length("two"),
        3 => length("three"),
        4 => length("four"),
        5 => length("five"),
        6 => length("six"),
        7 => length("seven"),
        8 => length("eight"),
        9 => length("nine"),
        10 => length("ten"),
        11 => length("eleven"),
        12 => length("twelve"),
        13 => length("thirteen"),
        14 => length("fourteen"),
        15 => length("fifteen"),
        16 => length("sixteen"),
        17 => length("seventeen"),
        18 => length("eighteen"),
        19 => length("nineteen"),
        20 => length("twenty"),
        30 => length("thirty"),
        40 => length("forty"),
        50 => length("fifty"),
        60 => length("sixty"),
        70 => length("seventy"),
        80 => length("eighty"),
        90 => length("ninety"),
    )
    lengthOfHundred = length("hundred")
    lengthOfThousand = length("onethousand")
    lengthOfAnd = length("and")
    firstGroup = 0
    for i in 1:99
        if haskey(d, i)
            firstGroup += d[i]
        else
            firstGroup += d[i - mod(i, 10)] + d[mod(i, 10)]
        end
    end
    secondGroup = 0
    for i in 1:9
        secondGroup += d[i] + lengthOfHundred
        secondGroup += 99 * (d[i] + lengthOfHundred + lengthOfAnd)
        secondGroup += firstGroup
    end
    sum = firstGroup + secondGroup
    sum += lengthOfThousand
    println(sum)
end

println(@elapsed main())
