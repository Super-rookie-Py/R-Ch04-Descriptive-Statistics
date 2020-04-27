###  Ch04.기술통계 분석(수치형)

###  2020/04/27 keonwoo park

## 02.가중평균 - 각 케이스 별로 성분이 달라서 가중치를 매겨서 평균낼 때 사용 

avg<- c(60, 70, 80)
wt <- c(10, 50, 40)
mean(avg)
weighted.mean(avg, wt)


## 03.기하평균 (증가율: CAGR) 증가율에 대해 평균을 낼 때 사용 
# 식으로 계산
(2363/635)^(1/4) - 1

# 비율로 계산
cagr <- c(1.5716, 1.2675, 1.3446, 1.3885)
# cagr <- c((998/635), (1265/998), (1701/1265), (2362/1701))
prod(cagr)^(1/length(cagr))-1


# psych 통계패키지 이용
# install.packages("psych")
library(psych)

# geometric.mean의 입력은 비율자료여야 함.
geometric.mean(cagr)-1




## 조화평균(속도 등과 같이 여러 단위가 결합되어 있을 때 계산)

hm <- c(400, 100)
1/mean(1/hm)

# 조화평균(psych)
harmonic.mean(hm)
