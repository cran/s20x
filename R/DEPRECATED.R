#Deprecated functions
pairs.20x <- function (x, ...) {
    pairs20x(x)
}

predict.20x <- function (object, newdata, cilevel = 0.95,
                         digit = 3, print.out = TRUE, ...){
    predict20x (object ,newdata, cilevel, digit, print.out)
}

summary.1way <- function (object, digit = 5, conf.level = 0.95, inttype = "tukey",
	pooled = TRUE, print.out = TRUE, draw.plot = TRUE, ...)
{	summary1way (object, digit, conf.level, inttype, pooled, print.out, draw.plot, ...)
}
summary.2way<-function (object, page = "table", digit = 5, conf.level = 0.95,
	print.out = TRUE, ...)
{	summary2way (object, page, digit, conf.level, print.out, ...)
}

