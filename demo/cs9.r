opar = par (ask = dev.interactive (orNone = TRUE) )

data (cloudseeding)
Rain.df = cloudseeding
attach(Rain.df)
seed<-factor(seed)
Rain.df
rain.seeded<-rain[seed=="seeded"]
rain.unseeded<-rain[seed=="unseeded"]
layout.20x(1,2)
stripchart(rain~seed,pch=1,vert=T,ylab="rain",main= "Stripcharts of Seeding")
boxplot(rain~seed,ylab="rain",main="Boxplots of Seeding")
numerical.summary(rain~seed)
qqnorm(rain.seeded)
abline(mean(rain.seeded),sd(rain.seeded))
qqnorm(rain.unseeded)
abline(mean(rain.unseeded),sd(rain.unseeded))
shapiro.test(rain.seeded)
shapiro.test(rain.unseeded)
log.rain<-log(rain)
log.seeded<-log(rain.seeded)
log.unseeded<-log(rain.unseeded)
shapiro.test(log.seeded)
shapiro.test(log.unseeded)
levene.test(log.rain~seed)
t.test(log.rain~seed,var.equal=T)
c.i.<-t.test(log.rain~seed,var.equal=T)$conf.int
c.i.
exp(c.i.)
layout.20x(1,1)

par (opar)



