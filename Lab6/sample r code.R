n = 19
x = 16
# suppose we do not know p
p = seq(0,1, by =0.01)

likilihood = dbinom(x = 16, size =n, prob = p)

plot(p,likilihood)

# suppose we know true p = 0.8
x_prob = dbinom(x = 0:19, size = n, prob = 0.8)

plot(0:19,x_prob)
 
