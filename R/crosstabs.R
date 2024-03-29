#' Crosstabulation of two variables
#' 
#' Produces a 2-way table of counts and the corresponding chi-square test of
#' independence or homogeneity.
#' 
#' 
#' @param formula a symbolic description of the model to be fit: ~ fac1 + fac2;
#' where fac1 and fac2 are vectors to be crosstabulated and treated internally
#' as factors.
#' @param data an optional data frame containing the variables in the model.
#' @return An invisible list containing the following components:
#' \item{row.props}{a matrix of row proportions, i.e. cell counts divided by
#' row marginals.} \item{col.props}{a matrix of column proportions, i.e. cell
#' counts divided by column marginals.} \item{Totals}{a matrix containing the
#' cell counts and the marginal totals.}
#' @note This function is deprecated and will be removed in future versions of the package.
#' @keywords htest
#' @examples
#' 
#' ##body image data:
#' data(body.df)
#' crosstabs(~ ethnicity + married, body.df)
#' 
#' @export crosstabs
crosstabs = function(formula, data) {
   call = match.call()
  m = match.call()
  m$drop.unused.levels = TRUE
  m[[1]] = as.name("model.frame")
  m = eval(m, parent.frame())
  
  if (ncol(m) != 2) 
    stop("Formula incorrect")
  Terms = attr(m, "terms")
  fac1 = m[, 1]
  fac2 = m[, 2]
  
  rowvar = names(m)[[1]]
  colvar = names(m)[[2]]
  
  if (!is.factor(fac1)) 
    fac1 = factor(fac1)
  if (!is.factor(fac2)) 
    fac2 = factor(fac2)
  ind = (1:length(fac1))[!is.na(fac1) & !is.na(fac2)]
  
  if (length(ind) != length(fac1)) {
    print(paste(length(fac1) - length(ind), " obsns deleted for missing values"))
    print(paste(length(ind), " obsns remaining"))
    cat("\n")
  }
  fac1 = fac1[ind]
  fac2 = fac2[ind]
  tab = table(fac1, fac2)
  row.sums = apply(tab, 1, sum)
  row.props = sweep(tab, 1, row.sums, "/")
  col.sums = apply(tab, 2, sum)
  col.props = sweep(tab, 2, col.sums, "/")
  wholeprops = tab/sum(tab)
  tab.tot = rbind(cbind(tab, row.sums), c(col.sums, sum(col.sums)))
  dimnames(tab.tot) = list(c(rownames(tab), "Total"), colvar = c(colnames(tab), "Total"))
  names(dimnames(tab.tot)) = c(paste("", rowvar, sep = ""), paste("", colvar, sep = ""))
  
  print(tab.tot)
  E = outer(row.sums, col.sums, "*")/sum(tab)
  dfs = (nrow(tab) - 1) * (ncol(tab) - 1)
  chi = (tab - E)^2/E
  cat("Chisq =", round(sum(chi), 4), " df =", dfs, "  p-value =", round(1 - pchisq(sum(chi), dfs), 5), "\n")
  if (any(E < 5)) 
    warning("Chi-square approximation may be incorrect")
  
  invisible(structure(list(row.props = row.props, col.props = col.props, whole.props = wholeprops, Totals = tab.tot, exp = E, chi = chi), class = "ct.20x"))
}

