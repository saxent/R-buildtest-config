library(ape)
tr <- rtree(10)
layout(matrix(1:4, 2))
plot(compute.brtime(tr)); axisPhylo()
plot(compute.brtime(tr, force.positive = FALSE)); axisPhylo()
plot(compute.brtime(tr, 1:9)); axisPhylo() # a bit nonsense
plot(compute.brtime(tr, 1:9, TRUE)); axisPhylo()
layout(1)
