###  Ch04.기술통계 분석(수치형)

###  2020/04/27 keonwoo park

## 05.분포
wgt <- read.csv("0401.wgt.csv",
                header = TRUE,
                na.strings = ".")
str(wgt)

wgt$sex <- factor(wgt$sex,
                  levels = c(1, 2),
                  labels = c("남자","여자")
)
str(wgt)

attach(wgt)

# 기본변수 사용
min(weight)
max(weight)
diff(range(weight)) #최대값과 최소값의 차이 
quantile(weight, c(0.25, 0.5, 0.75, 1.0)) # 분위수
var(weight) # 분산
sd(weight) # 표준편차
skew(weight) #왜도 ( 평균기준으로 왼쪽으로 치우쳐져있는지-일때)
kurtosi(weight) # 첨도


## 06.표준화 자료로 변환

wgt <- transform(wgt,
                 weight.z = scale(weight) #표준화값 추가
)
wgt

detach(wgt)
