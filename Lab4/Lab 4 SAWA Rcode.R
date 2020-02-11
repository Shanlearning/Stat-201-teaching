data = read.csv(file.choose(),sep = '\t')

data


#############################################################################
data$Guessed_Distance_square = data$Guessed_Distance^2

# get the linear model output
linear_model = lm(formula = True_Distance ~ Guessed_Distance,data=data)

linear_model
summary(linear_model)


# get the linear model output
quadratic_model = lm(formula = True_Distance ~ Guessed_Distance + Guessed_Distance_square,data=data)
quadratic_model



