readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data (fire.df)
readline("Press <Enter> to continue:")
fire.df
readline("Press <Enter> to continue:")
attach(fire.df)
readline("Press <Enter> to continue:")
plot(damage~distance,main="Damage versus distance")
readline("Press <Enter> to continue:")
fire.fit<-lm(damage~distance)
readline("Press <Enter> to continue:")
eovcheck (fire.fit)
readline("Press <Enter> to continue:")
summary(fire.fit)
readline("Press <Enter> to continue:")
plot(fire.fit,which=1)
readline("Press <Enter> to continue:")
normcheck (fire.fit)
readline("Press <Enter> to continue:")
ciReg(fire.fit)
readline("Press <Enter> to continue:")
fire.predict<-data.frame(c(1,4))
readline("Press <Enter> to continue:")
predict20x(fire.fit,fire.predict)
readline("Press <Enter> to continue:")
detach(fire.df)
readline("Press <Enter> to continue:")
par (opar)
