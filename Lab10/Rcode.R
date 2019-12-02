Silence = c(8,5,8	,18	,10	
,17	
,16	
,9	
,14	
,15	
,14	
,16	
,15	
,11	
,12	
,18	
,7	
,12	
,13	
,10)	
Music = c(15,	
          12,	
          14,	
          15,	
          8	,
          8	,
          21,	
          13,	
          6	,
          10,	
          8	,
          11,	
          10,	
          9	,
          16,	
          12,	
          11,	
          7	,
          10,	
          12
)

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
difference = c()
for( i in 1: 10000){
  temp = mean(sample(Music,5))-mean(sample(Silence,5))
  difference= c(difference,temp )
  
}

hist(difference,breaks = 30,col = "red",
     main="Method 1, normal method")


