opar = par (ask = dev.interactive (orNone = TRUE) )

data(teach.df)

teach.df
attach(teach.df)
plot(lang~IQ,main="Language Score versus IQ (by method)",type="n")
text(IQ,lang,method)
method<-factor(method)
teach.fit<-lm(lang~IQ+method)
summary(teach.fit)
plot(teach.fit,which=1)
plot(teach.fit,which=2)
shapiro.test(residuals(teach.fit))
ci.reg(teach.fit)
method<-factor(method,levels=c(2,1,3))
teach.fit1<-lm(lang~IQ+method)
summary(teach.fit1)
ci.reg(teach.fit1)
plot(lang~IQ,main="Fitted lines",type="n")
text(IQ,lang,as.character(method))
abline(teach.fit$coef[1],teach.fit$coef[2])
abline(teach.fit$coef[1]+teach.fit$coef[3],teach.fit$coef[2])
abline(teach.fit$coef[1]+teach.fit$coef[4],teach.fit$coef[2])

detach(teach.df)
par (opar)


