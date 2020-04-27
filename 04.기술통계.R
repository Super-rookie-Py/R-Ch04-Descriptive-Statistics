###  Ch04.기술통계 분석(수치형)

###  2020/04/27 keonwoo park

## 07.기술통계

attach(wgt)
summary(weight)

# 패키지 이용
library(psych)
describe(weight)


## 08.이상치 제거
# 이상치 제거
boxplot(weight)


# 80kg 이상인 데이터 제거
wgt <- wgt[!(weight>80),] #weight 80이상이 아닌값으로 수정해라 (80이상값 제거)
describe(weight) # attach해준 상태에서 전의 메모리가 있기 때문에 수정이 안되있다.


# 데이터프레임을 새롭게 수정했을 경우에는 detach한 후에
# 메모리에 올려져 있는 프레임을 새롭게 수정해 줌.
detach(wgt)
attach(wgt)
describe(weight)  # 값이 바뀌어있음.

## 09.그룹간 연속변수 특성 비교
tapply(weight, sex, mean)      
tapply(weight, sex, summary)
describeBy(wgt[c("weight")], sex, mat=TRUE)  #TRUE면 묶어서 값을 보여줘라. FALSE는 따로따로 
describeBy(wgt[c("weight")], sex, mat=FALSE)
