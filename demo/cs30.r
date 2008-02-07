opar = par (ask = dev.interactive (orNone = TRUE) )

data (peru)
peru.df = peru
peru.df
attach(peru.df)
pairs.20x(data.frame(BP,age,years,weight,height))
peru.fit<-lm(BP~age+years+weight+height)
plot(peru.fit,which=1)
summary(peru.fit)
resid.plot(peru.fit,f=0.95)
layout.20x(1,2)
plot(residuals(peru.fit)~years,main="Residual plot (years)")
lines(lowess(years,residuals(peru.fit),f=0.8))
plot(residuals(peru.fit)~weight,main="Residual plot (weight)")
lines(lowess(weight,residuals(peru.fit),f=0.8))
peru.fit1<-lm(BP~age+years+I(years^2)+weight+height)
summary(peru.fit1)
layout.20x(1,1)
resid.plot(peru.fit1,f=0.95)
plot(peru.fit1,which=2)
shapiro.test(residuals(peru.fit1))
cooks.20x(peru.fit1)
peru.fit2<-lm(BP~age+years+I(years^2)+weight+height,data=peru.df[-1,])
summary(peru.fit2)
peru.fit3<-lm(BP~age+years+I(years^2)+weight+height,data=peru.df[-c(1,37),])
summary(peru.fit3)
summary(peru.fit1)$coef
summary(peru.fit2)$coef
summary(peru.fit3)$coef
plot(peru.fit3,which=1)
plot(peru.fit3,which=2)
shapiro.test(residuals(peru.fit3))
ci.reg(peru.fit3)
yrs<-seq(0,45,by=0.01)
bp<- -1.76743*yrs+(0.03225*(yrs^2))
matplot(yrs,bp,type="l",main="BP versus Years",xlab="years",ylab="BP")
abline(v=27)

par (opar)



