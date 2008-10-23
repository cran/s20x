library(s20x)
opar = par (ask = dev.interactive (orNone = TRUE) )
data(computer.df)
computer.df
computer.df<-within(computer.df, selfassess<-factor(selfassess))
stripchart(score~selfassess,pch=1,vert=T,
           main="Stripcharts of Selfassess",ylab="score",
           data = computer.df)
summaryStats(score~selfassess, data = computer.df)
computer.fit<-lm(score~selfassess, data = computer.df)
eovcheck (computer.fit)
normcheck (computer.fit)
summary1way(computer.fit)
multipleComp(computer.fit)
par (opar)
