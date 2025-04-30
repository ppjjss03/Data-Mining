install.packages("dplyr") # dplyr 패키지 설치 및 로드하기
library(dplyr)

nrow(mtcars) # mtcars 데이터 세트 구조 확인하기
str(mtcars)


filter(mtcars, cyl == 4) # 조건에 맞는 데이터 추출하기


# 두 가지 조건에 맞는 데이터를 필터링하기
filter(mtcars, cyl >= 6 & mpg > 20) 

# 지정한 변수만 추출하기
head(select(mtcars, am, gear))

# 오름차순 정렬하기
head(arrange(mtcars, wt))

# 오름차순 정렬한 후 내림차순 정렬하기
head(arrange(mtcars, mpg, desc(wt)))

# 새로운 열 추가하기
head(mutate(mtcars, years = "1974"))
head(mutate(mtcars, mpg_rank = rank(mpg)))


# 중복 값 제거하기
distinct(mtcars, cyl)
distinct(mtcars, gear)

# 여러 개 열에서 중복 값 제거하기
distinct(mtcars, cyl, gear)


# 그룹별로 요약하기
gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n())

gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n_distinct(gear))


# 파이프 연산자 없이 순위 기준으로 정렬하기
mp_rank <- mutate(mtcars, mpg_rank = rank(mpg))
arrange(mp_rank, mpg_rank)


# 파이프 연산자를 사용하여 순위 기준으로 정렬하기
mutate(mtcars, mpg_rank = rank(mpg)) %>% arrange(mpg_rank)


#cyl 별로 그룹화하여 마력 (hp)가 가장 높은 "차" 찾기
gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n())


mutate(mtcars, hp_rank = rank(hp)) %>% arrange(hp_rank)
head(arrange(mtcars, wt))






