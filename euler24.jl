a = [1]
length(a)

function generatePermutation(A)
  if length(A) == 1
    return A
  ret = []
  for x in A
    rett = []
    push!(rett, x)
    AA = A
    pop!(AA, x)
    ggg = GeneralizedExtremeValue(AA)
    for k
    return
