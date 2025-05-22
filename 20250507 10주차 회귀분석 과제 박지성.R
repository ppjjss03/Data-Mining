data(cars)
head(cars)

# 기본 선형 회귀모형
model_original <- lm(dist ~ speed, data = cars)
summary(model_original)

# 잔차의 정규성 검정
shapiro.test(residuals(model_original))

# 로그 변환
cars$log_dist <- log(cars$dist)

# 회귀모형
model_log <- lm(log_dist ~ speed, data = cars)
summary(model_log)

# 정규성 검정
shapiro.test(residuals(model_log))

# 제곱근 변환
cars$sqrt_dist <- sqrt(cars$dist)

# 회귀모형
model_sqrt <- lm(sqrt_dist ~ speed, data = cars)
summary(model_sqrt)

# 정규성 검정
shapiro.test(residuals(model_sqrt))


# AIC로 비교 (작을수록 좋음)
AIC(model_original, model_log, model_sqrt)

# 잔차 히스토그램 + Q-Q plot 시각화
par(mfrow = c(3,2))
hist(residuals(model_original), main="Original Residuals")
qqnorm(residuals(model_original)); qqline(residuals(model_original))

hist(residuals(model_log), main="Log Residuals")
qqnorm(residuals(model_log)); qqline(residuals(model_log))

hist(residuals(model_sqrt), main="Sqrt Residuals")
qqnorm(residuals(model_sqrt)); qqline(residuals(model_sqrt))








