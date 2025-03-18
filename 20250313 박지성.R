##데이터프레임
ID <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SEX <- c("F", "M", "F", "M", "M", "F", "F", "F", "M", "F")
AGE <- c(50, 40, 28, 50, 27, 23, 56, 47, 20, 38)
AREA <- c("서울", "경기", "제주", "서울", "서울", "서울", "경기", "서울", "인천", "경기")
dataframe_ex <- data.frame(ID, SEX, AGE, AREA)
dataframe_ex

# 변수 속성 확인하기
str(dataframe_ex)
print(dataframe_ex$ID)
print(dataframe_ex$SEX)
print(dataframe_ex$AGE)
print(dataframe_ex$AREA)
##변  수  별  평  균  합
mean(dataframe_ex$AGE)
summary(dataframe_ex) ## 기초통계량
##범주형 다루기
##table()
# 성별빈도
table(SEX)
sex_freq <- table(SEX)
print(sex_freq)

#지역 빈도
table(AREA)
area_freq <- table(AREA)
print(area_freq)
#성별과 지역 교차표






x <- matrix(1:10,nrow = 5, ncol = 2)
print(x)
#행합구하기
row_sums<-c(nrow(x))
for(i in 1:nrow(x)){
  row_sums[i]<-sum(x[i,])
}
print(col_sums)
##열합구하기
col_sums<-c(ncol(x))
for(i in 1:ncol(x)){
  col_sums[i]<-sum(x[,i])
}
print(col_sums)

##apply()
##1 : 행 합, 평균
apply(x,1,sum)
apply(x,1,mean)
##2. : 열 합
apply(x,2,sum)
apply(x,2,mean)









