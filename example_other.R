setwd("C:/Projects/R/Lesson/ISL_R/lab1")

Auto = read.csv("C:/Projects/R/Lesson/ISL_R/data/Auto.csv",
                header = TRUE, na.strings = "?")

plot(Auto$cylinders, Auto$mpg)
attach(Auto)
plot(cylinders, mpg)

cylinders = as.factor(cylinders)
plot(cylinders, mpg)
plot(cylinders, mpg, col = "red")
plot(cylinders, mpg, col = "red", varwidth = TRUE)
plot(cylinders, mpg, col = "red", varwidth = TRUE, horizontal = TRUE)
plot(cylinders, mpg, col = "red", varwidth = TRUE,
     xlab = "cylinders", ylab = "MPG")

hist(mpg)
hist(mpg, col = 2)
hist(mpg, col = 2, breaks = 15)

pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)

plot(horsepower, mpg)
identify(horsepower, mpg, name)

summary(Auto)
summary(mpg)
summary(name)

savehistory()
loadhistory()
