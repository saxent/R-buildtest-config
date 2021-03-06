library(geiger)
n=40
phy=rcoal(n=n)
dat=rTraitCont(phy=phy, model="BM", sigma=sqrt(0.1))
r=paste(sample(letters,9,replace=TRUE),collapse="")
## calibrate proposal width
calibrate.rjmcmc(phy=phy, dat=dat, nstep=500, widths=2^(-3:0), type="rbm")

