# Path sum: three ways
# Problem 82
# NOTE: This problem is a more challenging version of Problem 81.
#
# The minimal path sum in the 5 by 5 matrix below, by starting in any cell in the left column and finishing in any cell in the right column, and only moving up, down, and right, is indicated in red and bold; the sum is equal to 994.
#
# Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."), a 31K text file containing a 80 by 80 matrix, from the left column to the right column.


# mat = [[131 673 234 103 18]
#        [201 96 342 965 150]
#        [630 803 746 422 111]
#        [537 699 497 121 956]
#        [805 732 524 37 331]]
# len = 5

function main()
    mat = readdlm("p082_matrix.txt", ',', Int)
    len = 80
    summat = copy(mat)
    for j = len-1:-1:1
        for i = 1:len
            val = []
            for ii = 1:len
                if i == ii
                    push!(val, summat[i, j+1]+mat[i,j] )
                elseif ii < i
                    push!(val, summat[ii,j+1]+sum(mat[ii:i,j]))
                else
                    push!(val, summat[ii, j+1]+sum(mat[i:ii,j]))
                end
            end
            summat[i,j] = min(val...)
        end
    end
    min(summat[:,1]...)
end

@time println(main())
