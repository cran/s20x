data (camplake.df)
camplake.df
trendscatter(Length~Scale.Radius,data=camplake.df)
bluegill.fit<-lm(Length~Scale.Radius,data=camplake.df)
summary(bluegill.fit)
residPlot(bluegill.fit)
bluegill.fit1<-lm(Length~Scale.Radius+I(Scale.Radius^2),data=camplake.df)
residPlot(bluegill.fit1)
eovcheck(bluegill.fit1)
normcheck(bluegill.fit1)
sr<-seq(1.3,3.6,by=0.01)
l<-bluegill.fit1$coef[1]+ bluegill.fit1$coef[2]*sr+ (bluegill.fit1$coef[3]*(sr^2))
plot(l~sr,type="l",main="Fitted Model",xlab="Scale.Radius",ylab="Length")
points(camplake.df$Scale.Radius,camplake.df$Length)
trendscatter(Length~Age,data=camplake.df)
bluegill.fit<-lm(Length~Age,data=camplake.df)
summary(bluegill.fit)
residPlot(bluegill.fit,f=0.75)
eovcheck(bluegill.fit)
normcheck(bluegill.fit)
ciReg(bluegill.fit)

