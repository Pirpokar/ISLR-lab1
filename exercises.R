# Упражнение 8
setwd("C:/Projects/R/Lesson/ISL_R/lab1")

college <- read.csv("C:/Projects/R/Lesson/ISL_R/data/College.csv")
fix(college)

rownames(college) <- college[, 1]
fix(college)

college <- college[, -1]
fix(college)

summary(college)

pairs(~Apps + Accept + Enroll + Top10perc + Top25perc +
       F.Undergrad + P.Undergrad + Outstate + Room.Board + Books, college)

Elite <- rep("No", nrow(college))
Elite[college$Top10perc > 50] <- "Yes"
Elite <- as.factor(Elite)
college <- data.frame(college, Elite)
fix(college)

summary(college$Elite)

plot(college$Elite, college$Outstate)

par(mfrow = c(2,2))
hist(college$Apps, breaks = 50)
hist(college$Accept, breaks = 50)
hist(college$Outstate, breaks = 50)
hist(college$Room.Board, breaks = 50)

# Упражнение 9
auto <- read.csv("C:/Projects/R/Lesson/ISL_R/data/Auto.csv", header = TRUE, na.strings = "?")
fix(auto)
auto <- na.omit(auto)

summary(auto)
# количественные переменные - mpg, displacement, horsepower, weight, acceleration  
# качественные переменные - cylinders, year, origin, name

range(auto$mpg)
range(auto$cylinders)
range(auto$displacement)
range(auto$horsepower)
range(auto$weight)
range(auto$acceleration)
range(auto$year)
range(auto$origin)
range(auto$name)

mean(auto$mpg)
mean(auto$displacement)
mean(auto$horsepower)
mean(auto$weight)
mean(auto$acceleration)

sd(auto$mpg)
sd(auto$displacement)
sd(auto$horsepower)
sd(auto$weight)
sd(auto$acceleration)

auto <- auto[c(-10, -85), ]

mean(auto$mpg)
mean(auto$displacement)
mean(auto$horsepower)
mean(auto$weight)
mean(auto$acceleration)

sd(auto$mpg)
sd(auto$displacement)
sd(auto$horsepower)
sd(auto$weight)
sd(auto$acceleration)


auto$cylinders <- as.factor(auto$cylinders)
auto$year <- as.factor(auto$year)
auto$origin <- as.factor(auto$origin)
auto$name <- as.factor(auto$name)

par(mfrow = c(2, 4))
plot(auto$cylinders,     auto$mpg, xlab = "cylinders",    ylab = "mpg")
plot(auto$displacement,  auto$mpg, xlab = "displacement", ylab = "mpg")
plot(auto$horsepower,    auto$mpg, xlab = "horsepower",   ylab = "mpg")
plot(auto$weight,        auto$mpg, xlab = "weight",       ylab = "mpg")
plot(auto$acceleration,  auto$mpg, xlab = "acceleration", ylab = "mpg")
plot(auto$year,          auto$mpg, xlab = "year",         ylab = "mpg")
plot(auto$origin,        auto$mpg, xlab = "origin",       ylab = "mpg")
plot(auto$name,          auto$mpg, xlab = "name",         ylab = "mpg")


# ”пражнение є10
library(MASS)
Boston
?Boston
summary(Boston)

dim(Boston)

pairs(Boston)

summary(as.factor(Boston$chas))

median(Boston$ptratio)

Boston[Boston$medv == min(Boston$medv), ]

nrow(Boston[Boston$rm > 7, ])
nrow(Boston[Boston$rm > 8, ])



