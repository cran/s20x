opar = par (ask = dev.interactive (orNone = TRUE) )

data (fire)
fire.df = fire
fire.df
attach(fire.df)
plot(damage~distance,main="Damage versus distance")
fire.fit<-lm(damage~distance)
summary(fire.fit)
plot(fire.fit,which=1)
plot(fire.fit,which=2)
shapiro.test(residuals(fire.fit))
ci.reg(fire.fit)
fire.predict<-data.frame(c(1,4))
predict.20x(fire.fit,fire.predict)

par (opar)


