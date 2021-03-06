
if(FALSE) {
housing.data = read.csv("../Data/housing_price.csv", header = T)

dummy.var = data.frame(1:nrow(housing.data))
c.name = c()

#for district
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

}


housing.data = readRDS("../Data/housing_data_dummy.rds")

max.age = max(housing.data$constructionTime)
relative.age = max.age - housing.data$constructionTime

housing.data = cbind(housing.data, relative.age)

saveRDS(housing.data, "../Data/housing_data_dummy.rds")
