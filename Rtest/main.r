#x <- read.csv("Data_Facebook_Survey.R - Sheet1.csv",header=T,sep=",")
#boxplot(x)

dataFile = "Data"
dataRead<-read.table(dataFile, header=TRUE)
lmSP<-lm(dataRead$S ~ dataRead$A)
plot(dataRead$A, dataRead$S, xlab="NASDAQ", ylab="Bitcoin")
abline(lmSP)
residSP=scale(resid(lmSP),center=TRUE, scale=TRUE)
numberOfData=313
randomNumbers<-rnorm(numberOfData,mean=0,sd=1)
qqplot(randomNumbers,residSP,xlab="random numbers", ylab="residuals")
abline(0,1)
summary(lmSP)