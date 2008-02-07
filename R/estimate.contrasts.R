estimate.contrasts <- function (contrast.matrix, fit, row = TRUE, alpha = 0.05,L=NULL) 
{
    if (!inherits(fit, "lm")) 
        stop("Second input is not an \"lm\" object")
 	if (length(dimnames(fit$model)[[2]]) == 2) 
		estimate.contrasts.I(contrast.matrix, fit, alpha = alpha,L)
	else estimate.contrasts.II(contrast.matrix, fit, alpha = alpha, row,L)
}



