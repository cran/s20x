opar = par (ask = dev.interactive (orNone = TRUE) )

data (camplake.df)
attach(camplake.df)
Age.F<-factor(Age)
plot(Length~Scale.Radius,type="n",main="Length vs Scale radius (by Age)")
text(Scale.Radius,Length,Age.F)
bluegill.fit<-lm(Length~Scale.Radius+Age.F)
resid.plot(bluegill.fit,f=0.7)
plot(bluegill.fit,which=2)
shapiro.test(residuals(bluegill.fit))
summary(bluegill.fit)
ci.reg(bluegill.fit)

detach(camplake.df)
par (opar)


