#Pure R
colMax <- function(x, ...){apply(cbind(x,...),2, max)}

#Rcpp version
library(Rcpp)
sourceCpp("./colMaxRcpp.cpp")