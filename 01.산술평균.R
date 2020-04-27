##  Ch04.기술통계 분석(수치형)

##  2020/04/27 keonwoo park

##  01.산술평균

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

# 기본 함수 이용
# na.rm = TRUE: 결측값을 통계분석 시 제외(미포함)
# mean(weight)
mean(weight, na.rm =T)
median(weight, na.rm = T)
summary(wgt)


# 절단평균(Trimmed Mean, psych)
mean(weight)
mean(weight, trim=0.1)

detach(wgt)
