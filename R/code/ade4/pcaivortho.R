library(ade4)
## Not run:
data(avimedi)
cla <- avimedi$plan$reg:avimedi$plan$str
# simple ordination
coa1 <- dudi.coa(avimedi$fau, scan = FALSE, nf = 3)
# within region
w1 <- wca(coa1, avimedi$plan$reg, scan = FALSE)
# no region the same result
pcaivnonA <- pcaivortho(coa1, avimedi$plan$reg, scan = FALSE)
summary(pcaivnonA)
# region + strate
interAplusB <- pcaiv(coa1, avimedi$plan, scan = FALSE)
if(adegraphicsLoaded()) {
g1 <- s.class(coa1$li, cla, psub.text = "Sans contrainte", plot = FALSE)
g21 <- s.match(w1$li, w1$ls, plab.cex = 0, psub.text = "Intra Région", plot = FALSE)
g22 <- s.class(w1$li, cla, plot = FALSE)
g2 <- superpose(g21, g22)
g31 <- s.match(pcaivnonA$li, pcaivnonA$ls, plab.cex = 0, psub.tex = "Contrainte Non A",
plot = FALSE)
g32 <- s.class(pcaivnonA$li, cla, plot = FALSE)
g3 <- superpose(g31, g32)
g41 <- s.match(interAplusB$li, interAplusB$ls, plab.cex = 0, psub.text = "Contrainte A + B",
plot = FALSE)
g42 <- s.class(interAplusB$li, cla, plot = FALSE)
g4 <- superpose(g41, g42)
G <- ADEgS(list(g1, g2, g3, g4), layout = c(2, 2))
} else {
par(mfrow = c(2, 2))
s.class(coa1$li, cla, sub = "Sans contrainte")
s.match(w1$li, w1$ls, clab = 0, sub = "Intra Région")
s.class(w1$li, cla, add.plot = TRUE)
s.match(pcaivnonA$li, pcaivnonA$ls, clab = 0, sub = "Contrainte Non A")
s.class(pcaivnonA$li, cla, add.plot = TRUE)
s.match(interAplusB$li, interAplusB$ls, clab = 0, sub = "Contrainte A + B")
s.class(interAplusB$li, cla, add.plot = TRUE)
par(mfrow = c(1,1))
}
## End(Not run)
