str(iris)
View(iris)

##apply
##column.sum
apply(iris[,1:4], 2, sum)
apply(iris[,1:4], 2, mean)
apply(iris[,1:4], 2, min)
summary(iris[,1:4])
lapply(iris[,1:4], sum)
sapply(iris[,1:4], min)
sapply(iris[,1:4], mean)
##scv
inf<-read.csv("C:/Users/user/Desktop/마이닝/infant.csv")
inf
View(inf)
setwd("")
str(inf)
plot(inf$age, inf$weight)

## 6 lines show
head(inf)

##linear regression
lm(inf$age~inf$weight, data = inf)
fit<-lm(inf$age~inf$weight, data = inf)
abline(fit)
summary(fit)
library(vcd)
help(package = "vcd")
data(Arthritis)

# 6 lines show
head(Arthritis)
str(Arthritis)
names(Arthritis)
dim(Arthritis)
length(Arthritis)
colnames(Arthritis)
hist(inf$age)
hist(inf$weight)

##csv
data(Hitters)
Hitters<-read.csv("")
head(Hitters)
dim(Hitters)
is.na(Hitters)
N_Hitters<-na.omit(Hitters)
is.na(N_Hitters)
dim(N_Hitters)
n_mean_salary<-mean(Hitters$Salary, na.rm)



