a = Date(2017, 1, 1)

Dates.Period(1, Dates.month)


b = Dates.month(1)

a+b

a + Dates.Month(1)
idxDate = Date(1901, 1, 1)
dCount = 0
while idxDate < Date(2000, 12, 31)
  if Dates.dayname(idxDate) == "Sunday"
      dCount += 1
  end
  idxDate = idxDate + Dates.Month(1)
  println(idxDate)
end
println(dCount)
