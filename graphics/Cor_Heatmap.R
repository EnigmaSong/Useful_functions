#From Stackoverflow
source("code/Graphic/Multiplot.R")

library(ggplot2)
library(reshape2)

#Draw Correlation Heatmap using ggplot2
## X : data matrix.
## ind : index of columns of X.

Cor_HeatMap <- function(X, ind){
  plot_result <- ggplot(melt((cor(X[,ind]))), aes(Var1, Var2, fill=value, label=round(value, 2))) +
    scale_fill_gradient2(low = "#0000FF", mid = "#FFFFFF", high = "#FF0000") +
    # scale_fill_gradient(low = "white", high = "black") +
    geom_tile()
  return(plot_result)
}
