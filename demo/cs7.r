opar = par (ask = dev.interactive (orNone = TRUE) )

data (mergers)
Merger.df = mergers
attach(Merger.df)
mergerdays
layout.20x(1,3)
hist(mergerdays)
boxplot(mergerdays,main="Boxplot of Merger Days")
stripchart(mergerdays,main="Stripchart of Merger Days",pch=1,vert=T)
numerical.summary(mergerdays)
layout.20x(1,1)
qqnorm(mergerdays)
abline(mean(mergerdays),sd(mergerdays))
shapiro.test(mergerdays)
trans.mergerdays<-log(mergerdays)
layout.20x(1,2)
boxplot(trans.mergerdays,main="Boxplot Transformed Merger Days")
qqnorm(trans.mergerdays)
abline(mean(trans.mergerdays),sd(trans.mergerdays))
shapiro.test(trans.mergerdays)
t.test(trans.mergerdays)
c.i.<-t.test(trans.mergerdays)$conf.int
c.i.
exp(c.i.)
layout.20x(1,1)

par (opar)





