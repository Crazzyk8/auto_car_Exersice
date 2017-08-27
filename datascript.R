library(readr)
auto_data <- read_csv("C:/Users/Shubham/Downloads/Data Science Assignment/Automobiles-Data.csv")
View(auto_data)
library(ggplot2)
library(stringr)
library(party)
library(caTools)''
library(caTools)
is.factor(autodata$price)
is.factor(auto_data$price)
range(auto_data$price)
model1 <- lm(price ~ engine_size, data=auto_data)
summary(model1)
SSE <- sum(model1$residuals^2)
SSE
RMSE <- sqrt(SSE/nrow(auto_data))
RMSE
model2 <- lm(price ~ engine_size + num_of_cylinders + make + drive_wheels + body_style + engine_location, data=auto_data)
summary(model2)
SSE<-sum(model2$residuals^2)
SSE
RMSE <- sqrt(SSE/nrow(Train))
RMSE <- sqrt(SSE/nrow(auto_data))
RMSE
library(readr)
auto_test <- read_csv("C:/Users/Shubham/Downloads/Data Science Assignment/Automobiles-Testing.csv")
View(auto_test)
prdiction <- predict(model2,auto_test)
prdiction
output <- cbind(auto_test,prdiction)
output
output
write.table(output, "output.csv", row.names=TRUE, sep=",")
