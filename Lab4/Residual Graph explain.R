install.packages("ggplot2")
library("ggplot2")

X = seq(1,10)
Y = X + rnorm(10,0,1)

dat = data.frame(cbind(X,Y))

model = lm(Y~X,dat)
dat$predict_Y = predict(model,dat)


ggplot(data = dat,aes(x=X,y=Y))+
  geom_smooth(method="lm",se=FALSE,size=2,alpha=0.3)+
  geom_hline(yintercept = mean(Y),color="red",size=1.5,alpha=0.5)+
  geom_point(alpha=0.6,size=3.3)

ggplot(data = dat,aes(x=X,y=Y))+
  geom_smooth(method="lm",se=FALSE,size=2,alpha=0.3)+
  geom_errorbar(aes(ymin=Y,ymax=predict_Y),color ="#CC0000",alpha=0.5,size=1.5)+
  geom_errorbar(aes(ymin=Y,ymax=mean(Y)),color ="green",alpha=0.5,size=1.5)+
  geom_hline(yintercept = mean(Y),color="red",size=1.5,alpha=0.5)+
  geom_point(alpha=0.6,size=3.3)


