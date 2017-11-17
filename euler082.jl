# Path sum: three ways
# Problem 82
# NOTE: This problem is a more challenging version of Problem 81.
#
# The minimal path sum in the 5 by 5 matrix below, by starting in any cell in the left column and finishing in any cell in the right column, and only moving up, down, and right, is indicated in red and bold; the sum is equal to 994.
#
# Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."), a 31K text file containing a 80 by 80 matrix, from the left column to the right column.


mat = [[131 673 234 103 18]
       [201 96 342 965 150]
       [630 803 746 422 111]
       [537 699 497 121 956]
       [805 732 524 37 331]]
len = 5

mat = readdlm("p082_matrix.txt", ',', Int)
len = 80
summat = copy(mat)
for j = len-1:-1:1
    for i = 1:len
        minV = 10000000
        for ii in 1:len

        if i == 1
            summat[i,j] += min(summat[i,j+1], mat[i+1,j] + summat[i+1, j+1])
        elseif i == len
            summat[i,j] += min(summat[i,j+1], mat[i-1,j] + summat[i-1, j+1])
        else
            summat[i,j] += min(summat[i,j+1], mat[i+1,j] + summat[i+1, j+1], mat[i-1,j]+summat[i-1, j+1])
        end
    end
end
println(min(summat[:,1]...))
println(mat[:,1])
