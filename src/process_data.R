
housing.data = read.csv("../Data/housing_price.csv", header = T)

dummy.var = data.frame()
c.name = c()

for (i in 1:13) {
  dum.var = c()
  
  for (j in housing.data$district) {
    if (j == i) {
      dum.var = c(dum.var, 1)
    }
    else {
      dum.var = c(dum.var, 0)
    }
  }
  dummy.var = cbind(dummy.var, dum.var)
  c.name = c(c.name, sprintf("district%d", i))
}
