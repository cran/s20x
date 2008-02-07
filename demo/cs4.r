opar = par (ask = dev.interactive (orNone = TRUE) )

data (crest)
Toothpaste.df = crest
attach(Toothpaste.df)
Toothpaste.df
ages<-c(purchasers,nonpurchasers)
buy<-rep(c("Yes","No"),c(20,20))
buy<-factor(buy)
layout.20x(1,2)
boxplot(ages~buy,main="Boxplots for Crest")
stripchart(ages~buy,vert=T,pch=1,main="Stripchart for Crest")
numerical.summary(ages~buy)
numerical.summary(purchasers)
numerical.summary(nonpurchasers)
t.test(purchasers,nonpurchasers)
t.test(purchasers,nonpurchasers,conf.level=0.9)
layout.20x(1,1)

par (opar)






