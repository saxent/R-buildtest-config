library(ade4)
data(chevaine)
'fun.chevaine' <- function(label = TRUE) {
opar <- par(mar = par("mar"))
on.exit(par(opar))
par(mar = c(0.1, 0.1, 0.1, 0.1))
s.label(chevaine$coo$poi, xlim = c(-20, 400), clab = 0, cpoi = 0)
invisible(lapply(chevaine$coo$lac, polygon, col = "blue", lwd = 2))
invisible(lapply(chevaine$coo$riv, points, col = "blue", type = "l", lwd = 2))
if(label) {
s.label(chevaine$coo$poi, clab = 0.75, add.p = TRUE)
s.label(chevaine$coo$sta, add.p = TRUE, clab = 0.5)
}
arrows(200, 100, 300, 100, code = 3, angle = 15, length = 0.2)
text(250, 125, "50 Km")
}
if(!adegraphicsLoaded()) {
fun.chevaine()
che.genet <- freq2genet(chevaine$tab)
che.pca <- dudi.pca(che.genet$tab, center = che.genet$center, scannf = FALSE, nf = 3)
par(mfrow = c(1, 2))
fun.chevaine(FALSE)
s.value(chevaine$coo$sta, che.pca$li[, 1], csi = 2, add.p = TRUE)
fun.chevaine(FALSE)
s.value(chevaine$coo$sta, che.pca$li[, 2], csi = 2, add.p = TRUE)
w <- prep.fuzzy.var (che.genet$tab, che.genet$loc.blocks)
che.fca <- dudi.fca(w, scannf = FALSE, nf = 3)
fun.chevaine(FALSE)
s.value(chevaine$coo$sta, che.fca$li[, 1], csi = 1.5, add.p = TRUE)
fun.chevaine(FALSE)
s.value(chevaine$coo$sta, che.fca$li[, 2], csi = 1.5, add.p = TRUE)
}

