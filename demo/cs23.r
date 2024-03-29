data (peru.df)
pairs20x(peru.df[c(5,1:4)])
peru.fit<-lm(BP~age+years+weight+height,data=peru.df)
eovcheck(peru.fit)
plot(peru.fit,which=1)
summary(peru.fit)
residPlot(peru.fit,f=0.95)
layout20x(1,2)
plot(residuals(peru.fit)~years,main="Residual plot (years)",data=peru.df)
lines(lowess(peru.df$years,residuals(peru.fit),f=0.8))
plot(residuals(peru.fit)~weight,main="Residual plot (weight)",data=peru.df)
lines(lowess(peru.df$weight,residuals(peru.fit),f=0.8))
layout20x(1,1)
peru.fit1<-lm(BP~age+years+I(years^2)+weight+height,data=peru.df)
summary(peru.fit1)
residPlot(peru.fit1,f=0.95)
normcheck(peru.fit1)
cooks20x(peru.fit1)
peru.fit2<-lm(BP~age+years+I(years^2)+weight+height,data=peru.df[-1,],)
summary(peru.fit2)
peru.fit3<-lm(BP~age+years+I(years^2)+weight+height,data=peru.df[-c(1,37),])
summary(peru.fit3)
summary(peru.fit1)
summary(peru.fit2)
summary(peru.fit3)
plot(peru.fit3,which=1)
normcheck(peru.fit3)
ciReg(peru.fit3)
yrs<-seq(0,45,by=0.01)
bp<- -1.76743*yrs+(0.03225*(yrs^2))
plot(yrs,bp,type="l",main="BP versus Years",xlab="years",ylab="BP")
abline(v=27)

