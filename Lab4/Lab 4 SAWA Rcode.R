# you need to enter your own value
Guessed_Distance = c(42,
      34,
      17,
      88,
      120,
      130,
      4,
      23,
      89,
      100
)

True_Distance = c(39,
      27,
      16,
      83,
      130,
      255,
      8,
      43,
      94,
      186
)

Object = c( "Distance to Maps Box",
            "Base of Closest Magnolia Tree",
            "Lamp Post across sidewalk",
            "Lamp Post on Right at the end of sidewalk leading to horseshoe",
            "Base of Brick Wall",
            "Red fire hydrant to right",
            "Shortest distance to letters on Sidewalk",
            "Nearest point to manhole cover to left",
            "Closest corner to concrete square to righ",
            "Facing statue first tree past oval walkway"
)


#############################################################################
# we combine the data into one dataframe
dat = data.frame(cbind(Guessed_Distance,True_Distance,Object))
# we create a new column
dat$Guessed_Distance_square = dat$Guessed_Distance^2

# get the linear model output
linear_model = lm(formula = True_Distance ~ Guessed_Distance,data=dat)
# get the linear model output
quadratic_model = lm(formula = True_Distance ~ Guessed_Distance + Guessed_Distance_square,data=dat)

# Part 2
#############################################################################
# generate data for plot
seq = seq(min(dat$Guessed_Distance), 
         max(dat$Guessed_Distance), 
         length.out = 100)
pred_dat = data.frame(cbind(seq,seq^2))
colnames(pred_dat) = c("Guessed_Distance","Guessed_Distance_square")
fitted_linear = predict(linear_model,newdata = pred_dat)
fitted_quadratic = predict(quadratic_model,newdata = pred_dat)

plot(True_Distance ~ Guessed_Distance, data = dat,pch=3,lwd=2)
with(pred_dat, lines(x = Guessed_Distance, y = fitted_linear,col="red",lwd= 2))
with(pred_dat, lines(x = Guessed_Distance, y = fitted_quadratic,col="blue",lwd= 2, lty=2))
legend("topleft", legend=c("Linear", "Quadratic"),
       col=c("red", "blue"), lty=1:2, cex=0.8)

summary(linear_model);summary(quadratic_model)
