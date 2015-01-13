data (camplake.df)
camplake.df<-within(camplake.df,{Age.F<-factor(Age)})
plot(Length~Scale.Radius,type="n",main="Length vs Scale radius (by Age)",data=camplake.df)
text(camplake.df$Scale.Radius,camplake.df$Length, camplake.df$Age.F)
bluegill.fit<-lm(Length~Scale.Radius+Age.F, data=camplake.df)
eovcheck(bluegill.fit)
residPlot(bluegill.fit,f=0.7)
normcheck(bluegill.fit)
summary(bluegill.fit)
ciReg(bluegill.fit)

