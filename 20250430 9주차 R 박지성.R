plot(Girth, Height)

fit<- lm(Height~Girth, data = trees)
plot(Height~Girth)
abline(fit)

paris(trees)
cor(trees)

cov(trees)
cor(trees)

cor.test(trees$Girth, trees$volume)
cor.test(trees$Girth, trees$Height)

fit<- lm(Height~Girth, data = trees)
plot(Height~Girth)
abline(fit)

lm(Height~Girth)

summary(fit)

library(lmtest)
bptest(fit)

           studentized Breusch-Pagan test

data: fit
BP = 1.665, df = 1, p-value = 0.1969

#1. 잔치 대 적합값 그래프 (등분산성 확인)
plot(fitted(fit), residuals(fit), +  xlab = "적합값", ylab = "잔차", +   main = "잔차 대 적합값 그래프")
abline(h = 0, col = "red", lty = 2)

#2. 정규성 검정 (sharpiro-wilk 테스트)
sharpiro.test(residuals(fit))

#잔차의 히스토그램 (정규성 확인)
hist(residuals(fit), +  xlab = "잔차", main = "잔차의 히스토그램", breaks = 10, col = "lightblue")

#잔차의 히스토그램 (전규성 확인)
hist(residuals(fit), xlab = "잔차", main = "잔차의 히스토그램", breaks = 10, col = "lightblue")

#잔차의 Q-Q 플롯 (정규성 확인)
qqniorm(residuals(fit))
qqline(residuals(fit), col = "red")

#3. 독립성 검정 (Durbin-Watson 테스트)
library(car)
durbinWatsonTest(fit)

plot(1:length(residuals(fit)), residuals(fit), xlab = "관측치 순서", ylab = "잔차", main = "관측치 순서에 따른 잔차")
abline(h = 0, col = "red", lty = 2)
















