##trees에 대한 정보 요청청
str(trees)
dim(trees)
is.na(trees)
sum(is.na(trees))
colnames(trees)
mean(trees$Girth)
mean(trees$Height)
mean(trees$Volume)
summary(trees)
hist(trees$Girth)
hist(trees$Height)
## 줄기 잎 그림
stem(trees$Girth)
stem(trees$Height)
stem(trees$Volume)
boxplot(trees$Girth)
boxplot(trees$Height)
boxplot(trees$Volume)
boxplot(trees)
##상 관 관 계
##correlation coefficient
cor(trees)
plot(trees$Girth, trees$Height)
plot(trees$Girth, trees$Volume)
##linear Regression  1차 직 선 회 귀 모 델
##lm(y - x)
fit<-lm(trees$Volume~trees$Girth, data = trees)
abline(fit)
summary(fit)
predict(fit)

fit2<-lm(trees$Volume~trees$Height, data = trees)
plot(trees$Height, trees$Volume)
abline(fit2)
predict(fit)
predict(fit2)
summary(fit2)
summary(fit)
abline(fit2)
predict(fit)
predict(fit2)
plot(trees$Height, trees$Volume)
fit2<-lm(trees$Volume~trees$Height, data = trees)
abline(fit2)

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
str(airquality)
dim(airquality)
is.na(airquality)
sum(is.na(airquality))
colnames(airquality)

mean(airquality$Ozone)
mean(airquality$Solar.R)
mean(airquality$Wind)
mean(airquality$Temp)
mean(airquality$Month)
mean(airquality$Day)

summary(airquality)

hist(airquality$Wind)
hist(airquality$Temp)
hist(airquality$Month)
hist(airquality$Day)

colSums(is.na(airquality))
airquality<-na.omit(airquality)
head(airquality)
summary(airquality)

airquality_clean<-na.omit(airquality)
head(airquality_clean)
summary(airquality_clean)

library(VIM)
S_airquality<-kNN(airquality, k=3)
summary(S_airquality)



