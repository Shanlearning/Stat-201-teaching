data = read.csv('https://raw.githubusercontent.com/Shanlearning/Stat201/master/Lab4/data.csv',sep = ',')

data$Guessed_Distance = c(42,34,17,88,120,130,4,23,89,100)

#############################################################################
data$Guessed_Distance_square = data$Guessed_Distance^2

# get the linear model output
linear_model = lm(formula = True_Distance ~ Guessed_Distance,data=data)

linear_model
summary(linear_model)


# get the linear model output
quadratic_model = lm(formula = True_Distance ~ Guessed_Distance + Guessed_Distance_square,data=data)
quadratic_model

