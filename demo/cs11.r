readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data(computer.df)
readline("Press <Enter> to continue:")
attach(computer.df)
readline("Press <Enter> to continue:")
computer.df
readline("Press <Enter> to continue:")
selfassess<-factor(selfassess)
readline("Press <Enter> to continue:")
stripchart(score~selfassess,pch=1,vert=T,main="Stripcharts of Selfassess",ylab="score")
readline("Press <Enter> to continue:")
summaryStats(score~selfassess)
readline("Press <Enter> to continue:")
computer.fit<-lm(score~selfassess)
readline("Press <Enter> to continue:")
eovcheck (computer.fit)
readline("Press <Enter> to continue:")
normcheck (computer.fit)
readline("Press <Enter> to continue:")
summary1way(computer.fit)
readline("Press <Enter> to continue:")
multipleComp(computer.fit)
readline("Press <Enter> to continue:")
detach(computer.df)
readline("Press <Enter> to continue:")
par (opar)
