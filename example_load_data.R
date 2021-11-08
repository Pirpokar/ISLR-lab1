setwd("C:/Projects/R/Lesson/ISL_R/lab1")

Auto = read.table("C:/Projects/R/Lesson/ISL_R/data/Auto.data")
fix(Auto)

Auto = read.table("C:/Projects/R/Lesson/ISL_R/data/Auto.data",
                  header = TRUE, na.strings = "?")
fix(Auto)

Auto = read.csv("C:/Projects/R/Lesson/ISL_R/data/Auto.csv",
                header = TRUE, na.strings = "?")
fix(Auto)
dim(Auto)
Auto[1:4]
Auto = na.omit(Auto)
dim(Auto)
names(Auto)
