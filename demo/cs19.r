data (lakemary.df)
lakemary.df
trendscatter(Length~Age,data=lakemary.df)
bluegill.fit<-lm(Length~Age,data=lakemary.df)
residPlot(bluegill.fit)
bluegill.fit1<-lm(Length~Age+I(Age^2),data=lakemary.df)
residPlot(bluegill.fit1)
eovcheck(bluegill.fit1)
normcheck(bluegill.fit1)
summary(bluegill.fit1)
a<-seq(1,6,by=0.01)
l<- bluegill.fit1$coef[1]+ bluegill.fit1$coef[2]*a+(bluegill.fit1$coef[3]*(a^2))
plot(a,l,type="l",main="Fitted Model",xlab="Age",ylab="Length")
points(lakemary.df$Age,lakemary.df$Length)

