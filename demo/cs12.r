opar = par (ask = dev.interactive (orNone = TRUE) )

data (oyster)
Oyster.df = oyster
attach(Oyster.df)
Site<-factor(Site)
boxplot(Oysters~Site,ylab="Number of Oysters",main="Boxplot of Oysters by Site")
levene.test(Oysters~Site)
log.Oysters<-log(Oysters)
levene.test(log.Oysters~Site)
oyster.fit<-lm(log.Oysters~Site)
plot(oyster.fit,which=2)
shapiro.test(residuals(oyster.fit))
summary.1way(oyster.fit)
multiple.comp(oyster.fit)

par (opar)



