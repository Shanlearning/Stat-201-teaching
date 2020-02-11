data = read.csv(file.choose())


#############################################################################
# we combine the data into one dataframe
dat = data.frame(cbind(Guessed_Distance,True_Distance))
# we create a new column
dat$Guessed_Distance_square = dat$Guessed_Distance^2
rownames(dat) = Object

# get the linear model output
linear_model = lm(formula = True_Distance ~ Guessed_Distance,data=dat)
# get the linear model output
quadratic_model = lm(formula = True_Distance ~ Guessed_Distance + Guessed_Distance_square,data=dat)



#############################################################################
# details, do not need to understand
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

par(mfrow=c(1,3))
plot(True_Distance ~ Guessed_Distance, data = dat,pch=3,lwd=2)
with(pred_dat, lines(x = Guessed_Distance, y = fitted_linear,col="red",lwd= 2))
with(pred_dat, lines(x = Guessed_Distance, y = fitted_quadratic,col="blue",lwd= 2, lty=2))
text(x=Guessed_Distance,y=True_Distance,labels = rownames(dat),col ="green")
legend("topleft", legend=c("Linear", "Quadratic"),
       col=c("red", "blue"), lty=1:2, cex=0.8)


sd_linear = sqrt(sum(linear_model$residuals^2)/8)
sd_quadriac = sqrt(sum(quadratic_model$residuals^2)/7)

plot(True_Distance ~ Guessed_Distance, data = dat,pch=3,lwd=1,col="Grey")
with(pred_dat, lines(x = Guessed_Distance, y = fitted_linear,col="red",lwd= 2))
points(x=Guessed_Distance_11th_Object,y=100,pch=2,lwd=2,col="black")
legend("topleft",legend="11th Object",col="black",pch=2)
with(pred_dat, lines(x = Guessed_Distance, y = fitted_linear-2*sd_linear,col="pink",lwd= 2,lty=3))
with(pred_dat, lines(x = Guessed_Distance, y = fitted_linear+2*sd_linear,col="pink",lwd= 2,lty=3))
Object_11th = data.frame(Guessed_Distance=Guessed_Distance_11th_Object)
pred_11th = predict(linear_model,Object_11th)
points(x=Guessed_Distance_11th_Object,y=pred_11th,col="purple",lwd=8)
arrows(Guessed_Distance_11th_Object, pred_11th-2*sd_linear, 
       Guessed_Distance_11th_Object, pred_11th+2*sd_linear,
       length=0.05, angle=90, code=3,col="blue")


plot(True_Distance ~ Guessed_Distance, data = dat,pch=3,lwd=2,col="Grey")
points(x=Guessed_Distance_11th_Object,y=100,pch=2,lwd=2,col="black")
legend("topleft",legend="11th Object",col="black",pch=2)
with(pred_dat, lines(x = Guessed_Distance, y = fitted_quadratic,col="blue",lwd= 2, lty=2))
with(pred_dat, lines(x = Guessed_Distance, y = fitted_quadratic-2*sd_linear,col="green",lwd= 2,lty=3))
with(pred_dat, lines(x = Guessed_Distance, y = fitted_quadratic+2*sd_linear,col="green",lwd= 2,lty=3))
Object_11th = data.frame(Guessed_Distance=Guessed_Distance_11th_Object,
                         Guessed_Distance_square=Guessed_Distance_11th_Object^2)
pred_11th = predict(quadratic_model,Object_11th)
points(x=Guessed_Distance_11th_Object,y=pred_11th,col="purple",lwd=8)
arrows(Guessed_Distance_11th_Object, pred_11th-2*sd_quadriac, 
       Guessed_Distance_11th_Object, pred_11th+2*sd_quadriac,
       length=0.05, angle=90, code=3,col="blue")

summary(linear_model)
summary(quadratic_model)


