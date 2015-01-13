data (toothpaste.df)
toothpaste.df
ages<-c(toothpaste.df$purchasers,toothpaste.df$nonpurchasers)
buy<-rep(c("Yes","No"),c(20,20))
buy<-factor(buy)
layout20x(1,2)
boxplot(ages~buy,main="Boxplots for Crest")
stripchart(ages~buy,vert=T,pch=1,main="Stripchart for Crest")
summaryStats(ages~buy)
summaryStats(toothpaste.df$purchasers)
summaryStats(toothpaste.df$nonpurchasers)
crest.fit<-lm(ages~buy)
eovcheck(crest.fit)
normcheck(crest.fit)
t.test(ages~buy,var.equal=T)
t.test(ages~buy,var.equal=T,conf.level=0.9)

