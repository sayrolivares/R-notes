#There are several ways to do so, but my preferred one is the following:

write.table(DataToExport, file="File_name.csv", sep=",")

#To a different working directory:
write.table(DatasetName,
            file="Users/user/.../DatasetAs.csv",
            row.names=F, sep=",")
