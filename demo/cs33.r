opar = par (ask = dev.interactive (orNone = TRUE) )

data (technitron)
technitron.df = technitron
technitron.df
attach(technitron.df)
pairs(data.frame(salary,yrs.empl,prior.yrs,educ,gender,dept,super))
pairs.20x(data.frame(salary,yrs.empl,prior.yrs, educ,super))
dept<-factor(dept)
tech.fit<-lm(salary~yrs.empl+prior.yrs+educ+gender+super+dept)
plot(tech.fit,which=1)
tech.fit1<-lm(log(salary)~yrs.empl+prior.yrs+educ+gender+super+dept)
plot(tech.fit1,which=1) 
summary(tech.fit1)
tech.fit2<-lm(log(salary)~yrs.empl+prior.yrs+educ+gender+dept)
summary(tech.fit2)
tech.fit3<-lm(log(salary)~yrs.empl+educ+gender+dept)
summary(tech.fit3)
plot(tech.fit3,which=1)
cooks.20x(tech.fit3)
plot(tech.fit3,which=2)
shapiro.test(residuals(tech.fit3))
exp(ci.reg(tech.fit2,cilevel=0.9))

par (opar)


