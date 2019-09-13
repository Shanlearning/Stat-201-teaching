dat <- read.csv("https://raw.githubusercontent.com/Shanlearning/Stat201/master/Lab1/Friday_class.csv")
dat

boxplot(dat[,c("Random_sample_mean","Judgement_sample_mean")])
abline(h=5.5686,col="red")

boxplot(dat[,c("Random_sample_std_deviation","Judgment_sample_std_deviation")])
abline(h=6.0008,col="red")
