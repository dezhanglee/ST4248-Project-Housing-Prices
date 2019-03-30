housing.data = readRDS("../Data/housing_data_dummy.RDS")

excluded.col = c(1:7, 9, 15, 16, 17, 23, 25)

house.data = housing.data[,-excluded.col]

lm.full = lm(price ~ ., data = house.data)


# Stepwise Regression
library(MASS)
step <- stepAIC(lm.full, direction="both")
step$anova # display results