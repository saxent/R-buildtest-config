library(ade4)
data(coleo)
coleo.fuzzy <- prep.fuzzy.var(coleo$tab, coleo$col.blocks)
fca1 <- dudi.fca(coleo.fuzzy, sca = FALSE, nf = 3)
if(adegraphicsLoaded()) {
plot(fca1)
} else {
scatter(fca1, labels = coleo$moda.names, clab.moda = 1.5,
sub = names(coleo$col.blocks), csub = 3)
}
