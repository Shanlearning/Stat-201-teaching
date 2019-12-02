dat = read.csv(file.choose(),sep = "\t")

Music = dat$Number.of.Words.Music.
Silence = dat$Number.of.words.Silence.

diff = Music - Silence

# paired difference
difference = c()
for( i in 1: 10000){
  temp = mean(sample(diff,5))
  difference= c(difference,temp )
           
}

hist(difference,breaks = 30,col = "blue",
     main="Method 2, paried method")

# method 1
difference2 = c()
for( i in 1: 10000){
  temp = mean(sample(Music,5))-mean(sample(Silence,5))
  difference2= c(difference2,temp )
  
}

hist(difference2,breaks = 30,col = "red",
     main="Method 1, normal method")

quantile(difference,0.05)
quantile(difference,0.95)

quantile(difference2,0.05)
quantile(difference2,0.95)

hist(Silence)
hist(Music)

