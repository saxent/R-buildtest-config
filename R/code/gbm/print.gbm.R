library(gbm)
data(iris)
iris.mod <- gbm(Species ~ ., distribution="multinomial", data=iris,
n.trees=2000, shrinkage=0.01, cv.folds=5,
verbose=FALSE, n.cores=1)
iris.mod
#data(lung)
#lung.mod <- gbm(Surv(time, status) ~ ., distribution="coxph", data=lung,
# n.trees=2000, shrinkage=0.01, cv.folds=5,verbose =FALSE)
#lung.mod
