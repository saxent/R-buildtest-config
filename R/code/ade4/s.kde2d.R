library(ade4)
# To recognize groups of points
if(!adegraphicsLoaded()) {
data(casitas)
casitas.fuz <- fuzzygenet(casitas)
casitas.pop <- as.factor(rep(c("dome", "cast", "musc", "casi"), c(24, 11, 9, 30)))
casitas.pca <- dudi.pca(casitas.fuz, scannf = FALSE, scale = FALSE)
if(requireNamespace("MASS", quietly = TRUE)) {
s.kde2d(casitas.pca$li)
s.class(casitas.pca$li, casitas.pop, cell = 0, add.p = TRUE)
}
}
