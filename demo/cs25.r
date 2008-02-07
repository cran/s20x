opar = par (ask = dev.interactive (orNone = TRUE) )

data (mazda)
mazda.df = mazda
mazda.df
attach(mazda.df)
age<-91-year
plot(price~age,main="Mazda Car Prices")
trendscatter(price~age)
trendscatter(log(price)~age)
mazda.fit<-lm(log(price)~age)
resid.plot(mazda.fit)
plot(mazda.fit,which=2)
shapiro.test(residuals(mazda.fit))
summary(mazda.fit)
exp(ci.reg(mazda.fit))

par (opar)


