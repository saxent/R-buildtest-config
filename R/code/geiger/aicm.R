library(geiger)
## generate a random set of values from a normal distribution,
## similar to a set of likelihood samples obtained via MCMC.
x <- rnorm(1000, -275, 2);
aicm(x);

