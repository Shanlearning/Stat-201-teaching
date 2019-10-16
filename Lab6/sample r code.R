?rbinom

sample_size = 24

# success from 1 to 24
success = 1:24

prob = dbinom(success,sample_size,prob = 0.8)

data.frame(success, round(prob,3) )

plot(success,prob)
lines(success,prob,col="blue")

simulation_trail = 100
simulation = rbinom(simulation_trail,sample_size,prob = 0.8)
hist(simulation)
 