# normal distribution
x <- seq ( -3, 3 , by = 0.01)
plot(x,dnorm(x),type = "l" , col = "red")

# t distribution
degree_of_freedom = 2
lines(x,dt(x,7),col="blue")
