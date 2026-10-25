data(mtcars)
head(mtcars)
str(mtcars)

# Base
plot(mtcars$wt, mtcars$mpg,
     main = "Base: Weight vs MPG",
     xlab = "Weight",
     ylab = "MPG")

hist(mtcars$mpg,
     main = "Base: Distribution of MPG",
     xlab = "MPG")

# Lattice
library(lattice)

xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs Weight by Cylinders")

bwplot(mpg ~ factor(cyl),
       data = mtcars,
       main = "Lattice: MPG by Cylinders")

# ggplot2
library(ggplot2)

ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: MPG vs Weight with trend by cylinders",
       color = "Cylinders")

ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ factor(cyl)) +
  labs(title = "ggplot2: MPG by cylinders")
