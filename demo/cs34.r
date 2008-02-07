opar = par (ask = dev.interactive (orNone = TRUE) )

data (zoo)
zoo.df = zoo
zoo.df
attach(zoo.df)
pairs.20x(data.frame(attendance,time,sun.yesterday,tv.ads))
stripchart(attendance~nice.day,vert=T,pch=1,method="jitter",main="Attendance by nice day")
stripchart(attendance~day.type,vert=T,pch=1,method="jitter",main="Attendance by day type")
day.type<-factor(day.type)
zoo.fit<-lm(attendance~time+sun.yesterday+tv.ads+nice.day+ day.type)
plot(zoo.fit,which=1)
plot(residuals(zoo.fit)~fitted(zoo.fit),type="n",main="Residual plot (fitted) by day type")
text(fitted(zoo.fit),residuals(zoo.fit),day.type)
zoo.fit1<-lm(log(attendance)~time+sun.yesterday+tv.ads+ nice.day+day.type)
plot(residuals(zoo.fit1)~fitted(zoo.fit1),type="n",main="Residual plot (fitted) by day type")
text(fitted(zoo.fit1),residuals(zoo.fit1),day.type)
summary(zoo.fit1)
cooks.20x(zoo.fit1)
plot(zoo.fit1,which=2)
shapiro.test(residuals(zoo.fit1))
exp(ci.reg(zoo.fit1))

par (opar)



