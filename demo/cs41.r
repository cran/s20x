data (sheep.df)
interactionPlots(Weight~Copper+Cobalt,data=sheep.df)
sheep.fit<-lm(Weight~Copper+Cobalt+Copper*Cobalt,data=sheep.df)
eovcheck(sheep.fit)
summary2way(sheep.fit,page="table")
sheep.fit1<-lm(Weight~Copper+Cobalt,data=sheep.df)
sheep.fit2<-lm(Weight~Cobalt,data=sheep.df)
eovcheck(sheep.fit2)
normcheck(sheep.fit2)
summary1way(sheep.fit2)
multipleComp(sheep.fit2)

