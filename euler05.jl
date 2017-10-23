function problem5(num::Int64)
    reduce(lcm, 1:num)
end

println(problem5(20))
