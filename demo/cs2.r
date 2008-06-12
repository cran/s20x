opar = par (ask = dev.interactive (orNone = TRUE) )

data (incomes.df)
attach(incomes.df)
incomes
layout.20x(1,2)
hist(incomes)
boxplot(incomes,main="Boxplot of Incomes")
numerical.summary(incomes)
t.test(incomes)
layout.20x(1,1)

detach(incomes.df)
par (opar)






