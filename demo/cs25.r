readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data (mazda.df)
readline("Press <Enter> to continue:")
attach(mazda.df)
readline("Press <Enter> to continue:")
age<-91-year
readline("Press <Enter> to continue:")
plot(price~age,main="Mazda Car Prices")
readline("Press <Enter> to continue:")
trendscatter(price~age)
readline("Press <Enter> to continue:")
trendscatter(log(price)~age)
readline("Press <Enter> to continue:")
mazda.fit<-lm(log(price)~age)
readline("Press <Enter> to continue:")
eovcheck (mazda.fit)
readline("Press <Enter> to continue:")
normcheck (mazda.fit)
readline("Press <Enter> to continue:")
summary(mazda.fit)
readline("Press <Enter> to continue:")
exp(ciReg(mazda.fit))
readline("Press <Enter> to continue:")
detach(mazda.df)
readline("Press <Enter> to continue:")
par (opar)