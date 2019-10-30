p_hat = 0.7273
n = 33
x = 24

p = seq(0,1,by = 0.001)

plot(p,dbinom(x=24,size = n,prob =p),type="l")
