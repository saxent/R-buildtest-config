library(adegenet)
x <- runif(20)
names(x) <- letters[1:20]
grp <- factor(paste("group", rep(1:4,each=5)))
## basic plot
loadingplot(x)
## adding groups
loadingplot(x,fac=grp,main="My title",cex.lab=1)
