opar = par (ask = dev.interactive (orNone = TRUE) )

data(bursary.df)
bursary.df
attach(bursary.df)
plot(pass.rate~decile,main="Pass rate versus decile")
trendscatter(pass.rate~decile,f=0.95)
bursary.fit<-lm(pass.rate~decile)
resid.plot(bursary.fit,f=0.95)
fail.rate<-100-pass.rate
bursary.fit1<-lm(fail.rate~decile)
resid.plot(bursary.fit1,f=0.95)
bursary.fit2<-lm(log(fail.rate)~decile)
resid.plot(bursary.fit2,f=0.95)
plot(bursary.fit2,which=2)
shapiro.test(residuals(bursary.fit2))
summary(bursary.fit2)
exp(ci.reg(bursary.fit2))

par (opar)
detach(bursary.df)

