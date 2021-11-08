setwd("C:/Projects/R/Lesson/ISL_R/lab1")

A <- matrix(1:16, 4, 4)
A
A[2,3]
A[c(1,3), c(2,4)]
A[1:3, 2:4]
A[1:2, ]
A[, 1:2]
A[1, ]
A[-c(1,3), ]
A[-c(1,3), -c(1,3,4)]
dim(A)
