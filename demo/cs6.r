readline("Press <Enter> to continue:")
opar = par (ask = dev.interactive (orNone = TRUE) )
readline("Press <Enter> to continue:")
data (houseprices.df)
readline("Press <Enter> to continue:")
attach(houseprices.df)
readline("Press <Enter> to continue:")
advertised.price
readline("Press <Enter> to continue:")
sell.price
readline("Press <Enter> to continue:")
price.difference<-advertised.price-sell.price
readline("Press <Enter> to continue:")
price.difference
readline("Press <Enter> to continue:")
layout20x(1,2)
readline("Press <Enter> to continue:")
hist(price.difference,breaks=10)
readline("Press <Enter> to continue:")
boxplot(price.difference,main="Boxplot of price.difference")
readline("Press <Enter> to continue:")
summaryStats(price.difference)
readline("Press <Enter> to continue:")
t.test(price.difference,alt="greater")
readline("Press <Enter> to continue:")
layout20x(1,1)
readline("Press <Enter> to continue:")
par (opar)
