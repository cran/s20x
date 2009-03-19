onewayPlot <- function(x, ...){
    UseMethod("onewayPlot")
}

onewayPlot.formula<-function(formula, data = parent.frame(),
                             conf.level = 0.95,
                             interval.type = "tukey",
                             pooled = TRUE, strip = TRUE, vert = TRUE,
                             verbose = FALSE,
                             ylabel = deparse(terms(formula)[[2]]),
                             flabel = deparse(terms(formula)[[3]]),...){

    if (missing(formula) || (length(formula) != 3))
        stop("'formula' missing or incorrect")

    formula
    cl <- match.call()
    mf <- match.call(expand.dots = FALSE)
    m<- match(c("formula","data"), names(mf), 0L)
    mf<- mf[c(1L, m)]
    mf$drop.unused.levels <- TRUE
    mf[[1]] <- as.name("model.frame")
    mf <- eval(mf, parent.frame())

    data<-mf

    index <- switch(interval.type, tukey=1, hsd = 2, lsd = 3, ci = 4, 0);
    if (!index)
        stop("bad interval.type argument");
    if ((conf.level < 0) || (conf.level > 1))
        stop("bad conf.level argument (must be between 0 and 1)");

    flabel <- as.character(flabel)
    ylabel <- as.character(ylabel)
    response <- match(deparse(terms(formula)[[2]]),names(mf))
    y <- mf[, response] #eval(terms(x)[[2]]);
    f <- factor(mf[, -response])

    name <- c("TUKEY intervals", "HSD intervals", "LSD intervals",
              "Confidence intervals")[index];
    mylevels <- split(y,f);
    nfactor <- as.numeric(f);
    xmax <- max(nfactor)
    if (length(mylevels) < 2) stop("must have at least 2 levels");
    title.string <- paste("Plot of `", ylabel, "' by levels of `", flabel,
                          "',\nwith ", name, " (", conf.level * 100, "%, ",
                          if (!pooled)
                          "un", "pooled SDs)", sep = "", collapse = "");
                          ## XXX: assumes levels are consecutively numbered from 1 upwards.
    if (strip) {
        if (vert) stripchart(y~f, vert=TRUE,main = title.string, xlab=flabel, ylab=ylabel,
                             pch=1, method="stack", col=1, xlim=c(0.5,xmax+0.5))
        else stripchart(y~f,main = title.string, xlab=ylabel, ylab=flabel,
                        pch=1, method="stack", col=1, ylim=c(0.5,xmax+0.5))
    }
    else boxplot(y~f, main=title.string, xlab=flabel, ylab=ylabel)
    D <- if (index == 4) 1
    else if (index==1) 2
    else sqrt(2);
    M <- if (index == 2) xmax*(xmax-1)/2 else 1;
    if (pooled) {
        df <- length(f) - length(mylevels);
        sdev <- summary(lm(y ~ f))$sigma;
    }
    if (verbose) {
        cat("\n", title.string, sep = "");
        if (pooled) cat("\n\nPooled: df = ", df, ", sd = ", sdev,
			"\n", sep = "")
        else cat ("\n\nUnpooled:\n");
    }
    for (level in seq(mylevels)) {
        levelname <- levels(f)[level];
        mylevel <- mylevels[[level]];
        avg <- mean(mylevel);
        if (!pooled) {
            df <- length(mylevel) - 1;
            sdev <- sd(mylevel);
        }
        if (index==1)
            conf.disp <- qtukey(conf.level,xmax,df)/D*sdev/sqrt(length(mylevel))
        else conf.disp <- qt(1 - (1 - conf.level) / (2 * M), df) / D *
            sdev / sqrt(length(mylevel));
        if (strip) {
            if (vert){              # addon to the vertical stripchart
                x.coord <- level- 0.2;
                lines( c(x.coord + 0.075, x.coord - 0.075),c(avg, avg),col=1);
                arrows(x.coord, avg - conf.disp, x.coord, avg + conf.disp,
                       length = 0.075, code = 3, col=1,
                       angle = if(index == 3) 90 else 75);}
            else {                  # addon to a horizontal stripchart
                y.coord <- level -0.2;
                lines(c(avg, avg), c(y.coord + 0.075, y.coord - 0.075),col=1);
                arrows(avg - conf.disp, y.coord, avg + conf.disp, y.coord,
                       length = 0.075, code = 3, col=1,
                       angle = if(index == 3) 90 else 75);}
        }
        else {                          # addon to a boxplot
            x.coord <- level;
            lines( c(x.coord + 0.085, x.coord - 0.085),c(avg,avg),col=2)
            arrows(x.coord, avg-conf.disp, x.coord, avg+conf.disp,
                   length = 0.09, code = 3, col = 2,
                   angle = if (index ==3) 90 else 75);}
        if (verbose) {
            cat(levelname, ": mean = ", avg , ", disp = ",
                conf.disp, sep = "");
            if (!pooled) cat(", df = ", df, ", sd = ", sdev,
                             sep = "");
            cat("\n");
        }
    }
}

onewayPlot.lm<-function(x, ...){
    cl <- match.call()

    fit <- eval(cl$x, parent.frame())
    formula <- formula(fit$call$formula)
    data <- data.frame(fit$model)

    onewayPlot.formula(formula, ..., data = data)
}
