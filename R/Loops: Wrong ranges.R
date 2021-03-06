#https://rosettacode.org/wiki/Loops/Wrong_ranges
#Context: There was no solution before mine.

#Aside from the second case, this behaviour is explained by two sentences of seq's documentation:
#"''generates '''from''', '''from'''+'''by''', ..., up to the sequence value less than or equal to '''to'''.
#Specifying '''to''' - '''from''' and '''by''' of opposite signs is an error.''"
#As we can see, '''from''' is always included whenever an error is not thrown and '''to''' will be missed
#if it cannot be reached.
seq(from = -2, to = 2, by = 1)#Output: -2 -1  0  1  2
seq(from = -2, to = 2, by = 0)#Fails: "invalid '(to - from)/by'"
seq(from = -2, to = 2, by = -1)#Fails: As above, "Specifying to - from and by of opposite signs is an error."
seq(from = -2, to = 2, by = 10)#Outpit: -2
seq(from = 2, to = -2, by = 1)#Fails: Same as the third case.
seq(from = 2, to = 2, by = 1)#Output: 2
seq(from = 2, to = 2, by = -1)#Output: 2
seq(from = 2, to = 2, by = 0)#Output: 2
seq(from = 0, to = 0, by = 0)#Output: 0