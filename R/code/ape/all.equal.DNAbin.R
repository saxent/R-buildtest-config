library(ape)
data(woodmouse)
woodm2 <- woodmouse
woodm2[1, c(1:5, 10:12, 30:40)] <- as.DNAbin("g")
res <- all.equal(woodmouse, woodm2, plot = TRUE)
str(res)
## if used for testing in R programs:
isTRUE(all.equal(woodmouse, woodmouse)) # TRUE
isTRUE(all.equal(woodmouse, woodm2)) # FALSE
all.equal(woodmouse, woodmouse[15:1, ])
all.equal(woodmouse, woodmouse[-1, ])
all.equal(woodmouse, woodmouse[, -1])
## Not run:
## To run the followings you need internet and Clustal and MUSCLE
## correctly installed.
## Data from Johnson et al. (2006, Science)
refs <- paste("DQ082", 505:545, sep = "")
DNA <- read.GenBank(refs)
DNA.clustal <- clustal(DNA)
DNA.muscle <- muscle(DNA)
isTRUE(all.equal(DNA.clustal, DNA.muscle)) # FALSE
all.equal(DNA.clustal, DNA.muscle, TRUE)
## End(Not run)

