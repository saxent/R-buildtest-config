library(ape)
## Gopher and lice data from Hafner et al. (1994)
data(gopher.D)
data(lice.D)
data(HP.links)
res <- parafit(gopher.D, lice.D, HP.links, nperm=99, test.links=TRUE)
# res # or else: print(res)

