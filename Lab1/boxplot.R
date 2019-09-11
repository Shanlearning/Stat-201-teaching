
# load the data, chosse the data.csv you download
dat <- read.csv(file.choose())
# a brief look at the data
dat

# draw boxplot for mean comparison
boxplot(dat[,c("Random_sample_mean","Judgement_sample_mean")])
# true population mean
abline(h=5.5686)

# draw boxplot for standard deviation comparison
# plot column3 and column4
boxplot(dat[,3:4])

# true population standard deviation
abline(h=6.0008,col="red")
