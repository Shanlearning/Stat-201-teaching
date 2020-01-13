t = c(0.32,1.94,1.91,0.97,1.60,0.28,0.84,1.83,1.58,1.92,1.70,1.87)
delta = c(1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0)

Ft = function(t,lambda){
  return(1-exp(-lambda*t))
}

Ltlambda = function(lambda){
  sum(log( Ft(t,lambda)^delta*(1-Ft(t,lambda))^(1-delta) ))
}

Lprime = function(lambda){
   sum( (- lambda * delta * exp(- lambda *t))/(1- exp(-lambda * t)) - 
    (1-delta)*lambda * t)
} 


lambda = 3
for(i in 1:10){
  lambda = lambda - Ltlambda(lambda)/Lprime(lambda)  
}
lambda = seq(0,10,by = 0.01)

result = rep(0, length(lambda))
for(i in 1:length(result)){
  result[i] = Ltlambda(lambda[i])}

plot(lambda,result)
lambda[which(max(result)==result)]