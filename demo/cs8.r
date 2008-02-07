opar = par (ask = dev.interactive (orNone = TRUE) )

data (incomes)
Incomes.df = incomes
remove (incomes)
attach(Incomes.df)
incomes
layout.20x(1,2)
hist(incomes)
boxplot(incomes,main="Boxplot of Incomes")
numerical.summary(incomes)
layout.20x(1,1)
qqnorm(incomes)
abline(mean(incomes),sd(incomes))
shapiro.test(incomes)
t.test(incomes)
trans.incomes<-log(incomes)
layout.20x(1,3)
qqnorm(trans.incomes)
abline(mean(trans.incomes),sd(trans.incomes))
hist(trans.incomes)
boxplot(trans.incomes,main="Boxplot of trans.incomes")
numerical.summary(trans.incomes)
shapiro.test(trans.incomes)
t.test(trans.incomes)
c.i.<-t.test(trans.incomes)$conf.int
c.i.
exp(c.i.)
layout.20x(1,1)

par (opar)




