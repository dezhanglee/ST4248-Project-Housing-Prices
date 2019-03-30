library(pls)

housing.data = readRDS("../Data/housing_data_dummy.RDS")

excluded.col = c(1:7, 15, 16, 17, 23)

house.data.pca = housing.data[,-excluded.col]

pca.out = pcr(price~., data = house.data.pca, scale = TRUE, validation = "CV")

