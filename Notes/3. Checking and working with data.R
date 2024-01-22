#This is to select certain rows only while checking all collumns
online_retail[c(5,6,7,8,9), ]
online_retail[5:9, ]

#Select all rows except certain for what you want to exclude in this sliced data, 
#in this case, 4 to 772 rows
online_retail[-(4:772), ]