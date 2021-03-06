library(ade4)
data(friday87)
w1 <- data.frame(scale(friday87$fau, scal = FALSE))
w2 <- ktab.data.frame(w1, friday87$fau.blo, tabnames = friday87$tab.names)
mcoa1 <- mcoa(w2, "lambda1", scan = FALSE)
kplot(mcoa1, option = "axis")
kplot(mcoa1)
kplot(mcoa1, option = "columns")

