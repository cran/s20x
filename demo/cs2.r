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
t.test(incomes)
layout.20x(1,1)

par (opar)






