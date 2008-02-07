#Deprecated functions
pairs.20x <- function (dataframe) { pairs20x (dataframe) }
predict.20x <- function (lmfit, newdata, cilevel = 0.95, digit = 3, print.out = TRUE)
{	predict20x (lmfit ,newdata, cilevel, digit, print.out)
}
summary.1way <- function (fit, digit = 5, conf.level = 0.95, inttype = "tukey",
	pooled = TRUE, print.out = TRUE, draw.plot = TRUE, ...)
{	summary1way (fit, digit, conf.level, inttype, pooled, print.out, draw.plot, ...)
}
summary.2way<-function (fit, page = "table", digit = 5, conf.level = 0.95,
	print.out = TRUE, ...) 
{	summary2way (fit, page, digit, conf.level, print.out, ...) 
}

