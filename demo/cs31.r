opar = par (ask = dev.interactive (orNone = TRUE) )

data (camplake)
camplake.df = camplake
camplake.df
attach(camplake.df)
pairs.20x(data.frame(Length,Age,Scale.Radius))
bluegill.fit<-lm(Length~Age+Scale.Radius)
plot(bluegill.fit,which=1)
bluegill.fit1<-lm(log(Length)~Age+Scale.Radius)
plot(bluegill.fit1,which=1)
layout.20x(1,2)
plot(residuals(bluegill.fit1)~Age,main="Residual plot (Age)")
plot(residuals(bluegill.fit1)~Scale.Radius,main="Residual plot (Scale.Radius)")
bluegill.fit2<-lm(log(Length)~Age+I(Age^2)+Scale.Radius)
summary(bluegill.fit2)
layout.20x(1,1)
plot(bluegill.fit2,which=1)
plot(bluegill.fit2,which=2)
shapiro.test(residuals(bluegill.fit2))
cooks.20x(bluegill.fit2)
exp(ci.reg(bluegill.fit2))

par (opar)


