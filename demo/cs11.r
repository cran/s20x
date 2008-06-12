opar = par (ask = dev.interactive (orNone = TRUE) )

data(computer.df)

attach(computer.df)
computer.df
selfassess<-factor(selfassess)
stripchart(score~selfassess,pch=1,vert=T,main="Stripcharts of Selfassess",ylab="score")
numerical.summary(score~selfassess)
levene.test(score~selfassess)
computer.fit<-lm(score~selfassess)
plot(computer.fit,which=2)
shapiro.test(residuals(computer.fit))
summary.1way(computer.fit)
multiple.comp(computer.fit)

detach(computer.df)
par (opar)


