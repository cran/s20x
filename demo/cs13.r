opar = par (ask = dev.interactive (orNone = TRUE) )

data (soya)
SoyaBean.df = soya
attach(SoyaBean.df)
SoyaBean.df
interaction.plots(yield~cultivar+planttime)
interaction.plots(yield~planttime+cultivar)
levene.test(yield~cultivar+planttime)
soya.fit<-lm(yield~cultivar+planttime+cultivar*planttime)
plot(soya.fit,which=2)
shapiro.test(residuals(soya.fit))
summary2way(soya.fit,page="table")
summary2way(soya.fit,page="effects")
summary2way(soya.fit,page="means")
summary2way(soya.fit,page="nointeraction")

par (opar)



