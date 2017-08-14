###############
# From https://stackoverflow.com/questions/19281010/simplest-way-to-do-parallel-replicate

parReplicate <- function(cl, n, expr, simplify=TRUE, USE.NAMES=TRUE)
  parSapply(cl, integer(n), function(i, ex) eval(ex, envir=.GlobalEnv),
            substitute(expr), simplify=simplify, USE.NAMES=USE.NAMES)