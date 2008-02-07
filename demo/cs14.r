opar = par (ask = dev.interactive (orNone = TRUE) )

data (arousal)
Arousal.df = arousal
remove (arousal)
attach(Arousal.df)
Arousal.df
interaction.plots(arousal~picture+gender)
interaction.plots(arousal~gender+picture)
levene.test(arousal~gender+picture)
arousal.fit<-lm(arousal~gender+picture+gender*picture)
plot(arousal.fit,which=2)
shapiro.test(residuals(arousal.fit))
summary.2way(arousal.fit,page="table")
summary.2way(arousal.fit,page="interaction")

gender.picture<-interaction.20x(gender,picture)
gender.picture<-factor(gender.picture)
arousal.1way.fit<-lm(arousal~gender.picture)
summary.1way(arousal.1way.fit)
multiple.comp(arousal.1way.fit)

par (opar)





