opar = par (ask = dev.interactive (orNone = TRUE) )

data (houseprices)
House.df = houseprices
attach(House.df)
advertised.price
sell.price
price.difference<-advertised.price-sell.price
price.difference
layout.20x(1,2)
hist(price.difference,breaks=10)
boxplot(price.difference,main="Boxplot of price.difference")
numerical.summary(price.difference)
t.test(price.difference,alt="greater")
layout.20x(1,1)

par (opar)





