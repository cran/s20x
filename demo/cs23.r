opar = par (ask = dev.interactive (orNone = TRUE) )

data (camplake)
camplake.df = camplake
attach(camplake.df)
camplake.df
trendscatter(Length~Scale.Radius)
bluegill.fit<-lm(Length~Scale.Radius)
summary(bluegill.fit)
resid.plot(bluegill.fit)
bluegill.fit1<-lm(Length~Scale.Radius+I(Scale.Radius^2))
summary(bluegill.fit1)
resid.plot(bluegill.fit1)
plot(bluegill.fit1,which=2)
shapiro.test(residuals(bluegill.fit1))
sr<-seq(1.3,3.6,by=0.01)
l<-bluegill.fit1$coef[1]+bluegill.fit1$coef[2]*sr+(bluegill.fit1$coef[3]*(sr^2))
matplot(sr,l,type="l",main="Fitted Model",xlab="Scale.Radius",ylab="Length")
points(Scale.Radius,Length)

trendscatter(Length~Age)
bluegill.fit<-lm(Length~Age)
summary(bluegill.fit)
resid.plot(bluegill.fit,f=0.75)
plot(bluegill.fit,which=2)
shapiro.test(residuals(bluegill.fit))
ci.reg(bluegill.fit)

par (opar)



