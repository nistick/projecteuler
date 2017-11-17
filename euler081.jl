# Path sum: two ways
# Problem 81
# In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.
# Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."), a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.

# mat = [[131, 673, 234, 103, 18],
#        [201, 96, 342, 965, 150],
#        [630, 803, 746, 422, 111],
#        [537, 699, 497, 121, 956],
#        [805, 732, 524, 37, 331]]

function main(mat, len)
    lastv = 2*len -1
    for i in lastv:-1:2
        for j =1:len
            k = i-j
            if k > len || k < 1
                continue
            end
            if j == len
                mat[j,k] += mat[j,k+1]
            elseif k == len
                mat[j,k] += mat[j+1,k]
            else
                mat[j,k] += min(mat[j+1,k], mat[j,k+1])
            end
        end
    end
    return mat[1,1]
end

mat = readdlm("p081_matrix.txt", ',', Int)
@time println(main(mat, 80))
