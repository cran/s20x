opar = par (ask = dev.interactive (orNone = TRUE) )

data (diamonds)
diamonds.df = diamonds
diamonds.df
attach(diamonds.df)
plot(price~weight,main="Price versus weight of diamonds")
diamond.fit<-lm(price~weight)
summary(diamond.fit)
layout.20x(1,2)
plot(diamond.fit,which=1)
plot(residuals(diamond.fit)~weight,main="Residual plot (weight)")
layout.20x(1,1)
plot(diamond.fit,which=2)
shapiro.test(residuals(diamond.fit))
ci.reg(diamond.fit)
diamond.predict<-data.frame(c(0.3,1.2))
predict.20x(diamond.fit,diamond.predict)

par (opar)


