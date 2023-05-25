# 원강희 23-Project1-R README파일 

<br>

## 2023-05-25

## #현황 
* 마무리 및 정리

<br>

### #과목 점수 데이터
```R
install.packages('fmsb') #패키지 인스톨
library(fmsb) #라이브러리

score <- c(80,60,95,85,40) #점수
max.score <- rep(100,5) #점수 최대값
min.score <- rep(0,5) # 점수 최소값
ds <- rbind(max.score, min.score, score) # 이건 뭘까
ds <- data.frame(ds) # 이건 뭐지
colnames(ds) <- c('국어','영어','수학','역사','음악' ) # 과목 명 ds변수에 대입
ds # 변수 출력(값)

radarchart(ds) # plot출력
```

<br>

####  #tip 
1. install, library 준비 install중복시 알림
2. R은 rgb(255,255,255,1.0) 1.0은 투명도
3. ggplot2(라이브러리) 적극 활용

***
## 2023-05-18

## #현황 
* 정렬 진행
* 샘플링 및 조합 진행
* 집계 진행

<br>

### #정렬
**정렬(sorting)은 주어진 기준에 따라 데이털 크기순으로 재배열하는 과정**
* 숫자의 경우 숫자의 크기에 따라 정렬 가능
* 문자열의 경우 알파벳순 따라 가나다순으로 정렬 가능
* sort() 함수: 값의 크기에 따라 값들을 정렬하는 함수
* order() 함수: 값의 크기에 따라 값들의 인덱스를 정렬하는 함수
#### Coding
```R
name <- c('정대','강재','신현','길동') #name 정의
sort(name)
name
sort(name, decreasing = T) #내림차순
order(name)
order(name, decreasing = F) #오름차순
idx <- order(name)
name[idx] #name 함수 값 출력
```
**매트릭스와 데이터프레임의 정렬**
* 특정 열의 값들을 기준으로 행을 재배열하는 방법
* iris 데이터셋에서 꽃잎의 길이를 기준을 행으로 재정렬하는 예
#### Coding
```R
head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]
iris[order(iris$Sepal.Length, decreasing = T),]
iris.new <- iris[order(iris$Sepal.Length),]
head(iris.new)
```
<br>

### #샘플링
**샘플링 주어진 값들에서 임의의 개수 만큼 값을 추출하는 작업**
#### 여러번 값을 추출할 때,
* **비복원 추출: 한번 뽑은 값을 제이한 뒤 새로운 값을 추출하는 방식**
* **복원 추출: 뽑았던 값을 다시 포함싴 새로운 값을 추출하는 방식**
#### 샘플링이 필요한 떄
* 데이터셋이 너무 커 분석에 시간이 많이 걸리는 경우 일부의 데이터만 추출하여 대략의 결과를 미리 확인
#### Coding
```R
x <- 1:100
y <- sample(x, size = 10, replace = FALSE)  #비복원 추출
y #FALSE비복원 추출, TRUE복원 추출
```
#### Coding2
```R
idx <- sample(1:nrow(iris), size=50, replace=F)
iris.50 <- iris[idx,]
dim(iris.50)
head(iris.50)

sample(1:20, size=7) #랜덤출력

set.seed(100)
sample(1:20, size=5)
```

<br>


### #조합
**조합(combination): 주어진 데이터값 중에서 몇 개씩 짝을 지어 추출하는 작업으로, combn() 함수를 사용**
#### Coding
```R
combn(1:5,4)

x <- c("orange", "red", "blue", "yellow")
com <- combn(x,2)

for(i in 1:ncol(com)) {
  cat(com[,i], "\n")
}
```
<br>

### #집계
**집계(aggregation): 데이터의 그룹에 대해서 합계나 평균을 계산하는 작업으로, aggregate()함수 사용**
```R
agee <- aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs),FUN = max)
```

<br>

### #나무지도
**사각타일의 형태로 표현 데이터를 정보를 타일의 크기와 색깔로 나타내며, treemap패키지 설치 후 사용**

**데이터 시각화(data visualization): 데이터 분석 과정에서 중요한 기술중 하나**
* 데이터가 저장하고 있는 정보나 의미를 보다 쉽게 파악할 수 있음
* 시각화 결과로부터 중요한 영감을 얻기도 함
#### Coding
```R
install.packages('treemap')
library(treemap)

data(GNI2014)
head(GNI2014)

treemap(GNI2014,
        index=c('continent','iso3'),
        vSize='population',
        vColor='GNI',
        type='value',
        bg.labels='yellow', #error메세지 출력시 제거
        title="World's GNI")
```
![23](https://github.com/WKH201840218/23-Project1-R/assets/80237099/40c4aaea-0b60-4ce2-8547-dcc6a5ed751a)


<br>

####  #tip 
1. 정렬 False 오름차순, True 내림차순

***
## 2023-05-11

## #현황 
* 다중변수 진행
* 결측값 진행

<br>

### #다중변수
**두 변수의 상관관계**
* 다중변수 데이터는 변수들이 개별 분석보다 변수 간의 관계를 찾는 것이 더 중요
* Pressure 데이터셋을 통해 온도와 기압의 관련성 분석
#### Coding
```R
plot(pressure$temperature, 
     pressure$pressure,
     main='온도와 기압',
     xlab = '온도(회씨)',
     ylab = '기압')
```
![511](https://github.com/WKH201840218/23-Project1-R/assets/80237099/bf64a997-443b-43b5-b349-00d9f2b79bf0)<br>
* 상관계수가 0인 경우 두 변수 X, Y사이에 상관성을 찾기 어려움
* 상관계수가 (-)인 경우 X, Y가 반비례, 음의 상관관계에 있음
* 상관계수가 (+)인 경우 X, Y가 반비례, 양의 상관관계에 있음
#### Coding2
```R
head(cars)

plot(cars$speed,
     cars$dist,
     main = '자동차 속도와 제동거리',
     xlab = '속도',
     ylab = '제동거리')

cor(cars$speed, cars$dist)
```
![512](https://github.com/WKH201840218/23-Project1-R/assets/80237099/52117532-3eb5-4bf4-9d66-5ddc40c1b386)

<br>
<br>

### #결측값
***데이터 전처리(data preprocessing)***
* 확보한 데이터를 정제하고 가공하여 분석에 적합한 형태로 만드는 과정
* 현실에서는 잘 정리된 데이터셋을 바로 얻는 경우가 많지 않음
* 데이터 전처리는 전체 분석 과정에서 오랜 시간을 차지

***결측 값의 처리***
* 결측 값은 데이터 수집, 저장 과정에서 값을 얻지 모하는 경우 발생(NA로 표현)
* 결측 값이 섞여 있는 데이터셋은 분석할 때 문제를 일으킴 ex)합, 평균 계산 시
* 결측 값은 2가지 방법으로 처리

#### Coding
```R
z <- c(1,2,3,NA,6,NA,7)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm=TRUE)
```
#### Coding2
```R
z1 <- c(1,2,3,NA,6,NA,7)
z2 <- c(4,5,2,NA,7,NA,8)
z1[is.na(z1)] <- 0
z1
z3 <- as.vector(na.omit(z2))
z3
```
<br>
<br>

####  #tip 
1. (-)상관 관계 예)질량, 부피, 받는 힘
2. (+)상관 관계 예)전류, 전력, 밝기


***

## 2023-05-04

## #현황 
* box plot, scatter plot 진행
* 데이터 분석 진행

<br>

### #상자그림
**상자그림(box plot)사분위수를 시각화하여 그래프 형태로 나타낸 것으로, 하나의 그래프로 데이터의 분포 등 다양한 정보 전달하여 단일 변수수치형 자료를 파악하는데 자주 사용**

#### Coding
```R
dist <- cars[,2]
boxplot(dist, main='자동차 제동거리')
```

```R
> boxplot.stats(dist)
$stats
[1]  2 26 36 56 93

$n
[1] 50

$conf
[1] 29.29663 42.70337

$out
[1] 120
```
![041](https://user-images.githubusercontent.com/80237099/236182793-2e5d0060-d8ca-47a2-ac3e-79f910aadbab.PNG)

#### Coding2
```R
dist <- cars[,2]
boxplot(Petal.Length~Species,
        data=iris,
        main='품종별 꽃잎의 길이',
        col=c('green', 'yellow', 'orange')
        )
```
![042](https://user-images.githubusercontent.com/80237099/236184057-0b4542b9-21b4-4008-b0b8-8e0a444b806e.PNG)

<br>

### #산점도 
**산점도(scatter plot) 다중변수 데이터에서 두 변수에 포함된 값들을 2차원 그래프상에 점을 표현하여 분포를 관찰할 수 있도록 하는 도구**
#### Coding
```R
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,
        main='중량-연비 그래프',
        xlab='중량',
        ylab='연비',
        col=c('blue'),
        pch=20
        )
```
![043](https://user-images.githubusercontent.com/80237099/236186408-2ebb9fd8-1347-4e21-889a-b092d362263f.PNG)
#### Coding2
```R
vars <- c('mpg','disp','drat','wt')
target <- mtcars[,vars]
head(target)
plot(target,
     main='Multi plots')
```
![044](https://user-images.githubusercontent.com/80237099/236188133-2d163f45-4a8e-4d73-99a5-6eab82ad8f59.PNG)


<br>
<br>

### #데이터 분석
### 데이터 분석 절차
**총 6단계 진행**
1. 문제 정의 및 계획
* 데이터분석은 해결하려는 문제를 명확히 정의하는 것에서 시작
* 문제 해결을 위해 어떤 데이터를 수집하고 분석할지 계획할 수 있음
2. 데이터수집
* 문제가 명확히 정의되면 문제를 해결하기 위해 필요한 데이터가 무엇인지 파악하고, 이러한 데이터들을 수집하는 과정을 거침
* 문제 해결에 필요한 데이터는 다양한 형태로 존재 <br>
ex)데이터베이스, 엑셀 파일 문서 등
3. 데이터 정제 및 전처리
* 수집 데이터는 바로 분석에 사용할 수 없을 때가 많음 <br>
ex) 단위, 결측값, 이상값
* 수집 데이터를 분석 가능한 형태로 정돈하는 데이터 정제 또는 전처리(data preprocessing) 과정 필요
4. 데이터 탐색
* 분석을 위해 정돈된 데이터 자체를 이해하고 파악하는 가벼운 데이터 분석 과정
* 비교적 간단하고 쉬운 통계 기법을 적용하여 전반적인 데이터의 내용을 파악
* 탐색적 데이터 분석(EDA, Exploratory Data Analysis)이라고도 함
5. 데이터 분석
* 데이터 탐색에서 파악한 정보를 바탕으로 보다 심화된 분석 수행<br>
ex) 군집 분석, 분류 분석, 주 성분 분석, 시계열 분석 등
6. 결과 보고
* 데이터 분석 및 해석을 보고서 형태로 작성
* 최초 정의했던 문제를 해결하는 데 도움이 되는 내용으로 요약
* 데이터 시각화 기술이 중요하게 활용됨



<br>

####  #tip 
1. console 입력으로 다른 plot 결과값 출력가능
plot(iris, main='change') <br>
![46c75177-bea1-46b0-b387-832acb8682d8](https://user-images.githubusercontent.com/80237099/236189176-d2b6a3d4-93ba-4b22-9b9c-fef56338cc03.png)
2. (Ctrl +) 글자 크기 확대, (Ctrl -) 글자 크기 축소


<br>

***


## 2023-04-27

## #현황 
* 막대그래프 진행
* 히스토그램 진행
* 원그래프 선그래프

<br>

### #막대그래프

#### Coding
```R
#데이터 입력
age.A <- c(13709, 10222, 7222, 5222, 4222)
age.B <- c(17709, 29022, 36222, 32322, 22222)
age.C <- c(999, 2102, 5222, 12222, 19222)

ds <- rbind(age.A, age.B, age.C)
colnames(ds) <- c('1970', '1990', '2010', '2030', '2050')
ds

#그래프 작성
barplot(ds, main='인구 추정', col = rainbow(3), beside = T, legend.text = T)
```

<br>

### #히스토그램
**히스토그램은 외관상 막대그래프와 비슷한 그래프로, 그룹이 명시적으로 존재하지 않은 수치형 자료의 분포를 시각화할 떄 사용함**


#### Coding
```R
head(cars)
dist <- cars[,2]
dist
hist(dist,
     main='Histogarm for 제동거리',
     xlab = '제동거리',
     ylab = '빈도수',
     border='blue',
     col='green',
     las=2,
     breaks = 5)
```
#### Coding2
```R
hist(iris$Sepal.Length,
     main = 'Sepal.Length',
     col='orange')
     
barplot(table(mcars$cyl),
        main='mtcars',
        col=c('red','green','blue'))

barplot(table(mtcars$gear),
        main='mtcars',
        col=rainbow(3),
        horiz=TRUE)

pie(table(mtcars$cyl),
    main='mtcars',
    col=topo.colors(3),
    radius = 2)

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)
```

<br>

### #원그래프와 선그래프
* **원그래프 : 하나의 원 안에 데이터 값이 자지하는 비율을 넓일 나타낸 그래프**
#### Coding
```R
install.packages('plotrix')

library(plotrix)

favorite <- c('WINTER', 'SUMMER', 'SPRING', 'FALL')
ds <- table(favorite)
ds
pie3d(ds, main = '선호 계절',
    col=c('orange','green','red','black'),
          raidus=1)
```

* **선그래프는 연도별 인구 증사 추이와 같은 시간의 변화에 따라 수집된 데이터를 시각화하는데 주로 사용**
#### Coding
```R
month <- 1:12
late <- c(2,4,3,4,2,5,8,2,3,11,4)
plot(month,
     late,
     main='지각생 통계',
     type='3',
     lty=1,
     lwd=1,
     xlab='Month',
     ylab='Late cnt') #미완성 여기까지 진도
```

<br>

####  #tip 
1. col = rainbow(4) 막대그래프 4색 배치, col=c('red','green','blue') 임의의 색 배치

<br>

***


## 2023-04-13

## #현황 
* 파일 입출력 완
* 반복문 진행
* 사용자 정의 함수 진행

<br>


## #파일 입출력
1. setwd('C:/Rwork') 작업 폴터 지정
2. getwd() setwd() 출력
3. print('code') 화면으로 출력
4. sink('result.txt', append = T) 파일 출력 시작
5. sink() 파일 출력 정지
6. head(airquality) -> view(airquality) airquality파일 출력

### #if-else문
**조건문(conditional statement) : 조건에 따라 실행할 명령문**

```R
if (비교 조건) { 
조건이 참일 때 실행할 명령문들
} else {
조건이 거짓일 때 실행할 명령문들
}
```
#### 실적용
```R
job.type <- 'a'
if(job.type == 'b') {
  bonus <- 200
} else {
  bonus <- 100
} 
print(bonus)
```
<br>

### #for문
* **반복 범위는 반복 변수에 할당할 값을 모아둔 벡터로 이 벡터의 길이만큼 for문은 반복됨**
* **for문이 한 번씩 수행될 때마다 반복 범위의 값을 하나씩 가져와 반복 변수에 저장한 뒤 코드블록안에 있는 명령문을 실행함**
```R
for (반복 변수 in 반복 범위) {
  반복할 명령문들
}
```
#### 실적용
```R
for(i in 1:5) {
  print(i)
}
```

<br>

### #apply() 계열 함수
**apply() 함수는 매트릭스나 데이터프레임에 있는 행들이나 열들을 하나하나 차례로 꺼내서 평균이나 합계 등을 구하는 작업을 수행하고자 할 때 유용**
#### 구조
* apply(데이터셋, 행/열 방향 지정, 적용 함수)

#### 매개변수
* 데이터셋 : 반복 작업을 적용할 대상인 매트릭스나 데이터프레임 이름 입력
* 행/열 방향 지정 : 행 방향 작업의 경우 1, 열 방향 작업의 경우 2를 지정
* 적용 함수 : 반복 작업의 내용을 알려주는 것으로, R 함수이거나 다음 절에서 배울 사용자 적용 함수를 지정

<br>

### #사용자 정의 함수의 개념
**사용자 정의 함수: 사용자가 스스로 만드는 함수**

#### 문법
```R
함수명 <- function(매개변수 목록) {
  실행할 명령문들
  return(함수의 실행 결과)
}
```
#### 실적용
```R
mymax <- function(x, y) {
  num.max <- x
  if (y>x) {
    num.max <- y
  }
  return(num.max)
}
```
#### 매개변수
* 함수명: 사용자 정의 함수의 이름으로 사용자가 만들 수 있다.
* 매개변수 목록: 함수에 입력할 매개변수 이름을 지정한다.
* 실행할 명령문들 : 함수에서 처리하고 싶은 내용을 작성한다.
* 함수의 실행 결과: 함수의 실행 결과를 반환하며, 반환 결과가 없으면 return() 함수를 생략한다.


<br>

####  #tip 
1. while문
```R
sum <- 0
i <- 1
while(i <= 100) {    # sum에 i 값을 누적
 sum <- sum + i      # i 값을 1 증가시킴
 i <- i + 1
}
print(sum) 
```
<br>

2. 데이터 분석을 하다 보면 자신이 원하는 데이터가 벡터나 매트릭스, 데이터프레임 안에서 어디에 위치하는지 알아야 할 때가 있음 그 때 편리하게 사용할 수 있는 함수가 which(), which.max( ), which.min() 함수
```R
score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
which(score==69)   #성적이 69인 학생은 몇 번째에 있나?
which(score>=85)   #성적이 85 이상인 학생은 몇 번째에 있나?
max(score)         #최고 점수는 몇 점인가?
which.max(score)   #최고 점수는 몇 번째에 있나?
min(score)         #최저 점수는 몇 점인가?
which.min(score)   #최저 점수는 몇 번째에 있나?

```

<br>

***

<br>

## 2023-04-06

## #현황 
* iris 데이터셋 연산
* 매트릭스와 데이터프레임에 함수 적용
* 데이터 입력과 출력 진행

<br>


## #데이터프레임(data frame)
**매트릭스와 마찬가지로 2차원 형태의 데이터를 저장하고 분석하는데 사용되는 자료구조**

<br>


### #iris 데이터셋
1. 
* Sepal.Length 숫자형
* Spal.Width 숫자형
* Patal.Length 숫자형
* Petal.Width 숫자형
* Species 문자형(벡터)
2.
* dim(iris) 행과 열의 개수 보이기
* nrow(iris) 행의 개수 보이기
* ncol(iris) 열의 개수 보이기
* colnames(iris) 열 이름 보이기, names() 함수와 결과 동일
* head(iris) 데이터셋의 앞부분 일부 보기
* tail(iris) 데이터셋의 윗부분 일부 보기
3.
* str(iris) 데이터셋 요약 정보 보기
* iris[,5] 품종 데이터 보기
* levels(iris[,5]) 품종의 종류 보기(중복 제거)
* table(iris[,"Species"]) 품종의 종료별 행의 개수 세기

![21](https://user-images.githubusercontent.com/80237099/230359037-3e2335a1-1687-4ab8-b97e-fd4a2ea3c352.PNG)<br>

![22](https://user-images.githubusercontent.com/80237099/230359040-ee9aff72-0ea4-4970-a5b9-7ba4d5257e13.PNG)<br>
<br>
### #행별, 열별로 합계와 평균 계산하기
* colSums(itis[,-5]) 열별 합계
* colMeans(itis[,-5]) 열별 평균
* rowSums(itis[,-5]) 행별 합계
* rowMeans(itis[,-5]) 행별 평균

### #매트릭스와 데이터프레임에 함수 적용
**조건에 맞는 행과 열의 값 추출하기**
* iris : 데이터를 추출하는 대상이 iris 데이터셋
* Species=='setosa' : 데이터를 추출할 조건을 지정하는 부분으로, 품종 열의 값이 'setosa'인 행만 추출하라는 의미

**매트릭스와 데이터프레임의 자료구조 확인하기**
* class(iris) iris 데이터셋의 자료구조 확인
* class(state.x77) state.x77 데이터셋의 자료구조 확인
* is.matrix(iris) 데이터셋이 매트릭스인지 확인하는 함수
* is.data.frame(iris) 데이터셋이 데이터프레임인지 확인하는 함수
* is.matrix(state.x77)
* ix.data.frame(state.x77)

<br>

### #R에서의 입력과 출력
1. A <- min(변수명) : 변수중 제일 작은 수
2.  B <- max(변수명) : 변수중 제일 큰 수
<br>

![24](https://user-images.githubusercontent.com/80237099/230364536-9a3f00a5-9cc4-430b-bdb0-1fe33284e0a7.PNG)

<br>

### #작업 폴더 
**자신이 읽거나 쓰고자 하는 파일이 위치하는 폴더**
* R에서 어떤 파일을 읽으려면 그 파일이 위치한 폴더의 경로와 함께 파일 이름을 지정해야 함
![27](https://user-images.githubusercontent.com/80237099/230370453-a5c0f1fb-f990-4073-a248-e3e2ecafb52b.PNG)





####  #tip 
1. IR.1에는 iris의 전채 150개의 행 중 조건에 맞는 50개의 행만 저장
2. is.(code)는 확인(T/F)확인용 변수 
3. library code
``` 
library(svDialogs)
user.input <- dlginput('Input icome')$res
user.input
income <- as.numeric(user.input)
income
tax <- income * 0.05
cat('세금: ', tax)
``` 

***

## 2023-03-30

## #현황 
* 간단한 산술 계산(변수<숫자, sum, length 연산 등)
* 펙터, 리스트, 매트릭스 진행

## #자료
### 자료의 종류
![0](https://user-images.githubusercontent.com/80237099/228809731-47af5997-4616-45cc-987b-12b412219766.PNG)<br>
![1](https://user-images.githubusercontent.com/80237099/228809742-053ec002-f3bc-4ef0-be50-03dba5f5ee8e.PNG)<br>
![2](https://user-images.githubusercontent.com/80237099/228809744-6d4137fe-5e99-47bc-a55c-07f489f7891d.PNG)<br>
<br> 

### 1차원 자료
* 벡터(vector)
* 리스트(list)
* 펙터(factor)

### 2차원 자료
* 매트릭스(matrix)
* 데이터프레임(data frame)

### #범주형 자료와 수치형 자료
**범주형 자료 : '분류'의 의미를 갖는 값들로 구성된 자료로, 보통 문자로 표현되고 산술연산을 적용할 수 없음.**

**수치형 자료 : 값들이 크기를 가지며 산술연산이 가능함**

<br>


### #벡터에 사용 가눙한 함수들
![1](https://user-images.githubusercontent.com/80237099/228816863-38b680be-82c2-4617-9b98-27369b3ac779.PNG)
<br>

#### 간단한 벡터 함수
a <- c(1, 2, 3, 4, 5, 6, 7, 8)<br>
sum(a>5) = 3<br>
해석 : a 값의 true 값은 6, 7, 8값의 합이 아니라 변수의 값의 합<br>
(6 + 7 + 8 = 21) X<br>
(T + T + T = 3) O<br>
<br>

### #펙터
**팩터는 문자형 데이터가 저장되는 벡터의 일정으로, 저장되는 문자값들이 어떠한 종류를 나타내는 값일 때 사용**
<br>
<br>

### #매트릭스
**매트릭스와 데이터프레임은 2차원 자료를 저장하기 위한 대표적인 자료구조**
* 1차원 자료 : '학생들의몸무게'와 같이 단일 주제의 값드을 모아 놓은 것
* 2차원 자료 : 키·몸무게·나이와 같이 한사람에 대한 여려 주제로 데이터를 수집한 형태

**매트릭스와 데이터 프레임의 차이점은 매트릭스에 저장되는 모든 자료의 종류가 동일한 반면 데이터프레임에는 서로 다른 종류의 데이터가 저장**
<br>
<br>

####  #tip 
1. ls 변수 리스트 확인
2. rm remove
3. rm(list = ls()) 모든 리스트 remove<br>
![ls1](https://user-images.githubusercontent.com/80237099/228809080-a165ed3c-ffcd-498e-8930-6bf5d0e80750.PNG)
4. cbind y축(세로열), rbind X축(가로열)
<br>


***

## 2023-03-23

## #현황 
* R studio update 완료
* ggplot, cowsay install
* R 백터까지 진도 진행
<br>
<br>


## #패키지
**패키지는 소프트웨어 분야에서는 컴퓨터 이용자가 일상 업무에서 사용하는 응용 프로그램(application program)의 한 가지이며, 시판되고 있는 완성품 프로그램 또는 프로그램 집합체이다.**

### #패키지 인스톨 : install.packages('패키지 이름')

### cowsay
* install : install.packages("cowsay")
* code : say("@@@", by="@@@")
1. cat<br>
![by2](https://user-images.githubusercontent.com/80237099/227181177-14a2d561-8a96-4292-9927-1382f3c9a05a.PNG)<br>
2. snow<br>
![by1](https://user-images.githubusercontent.com/80237099/227181175-050f9b5c-0e92-44c6-9a84-5dc9e003fc89.PNG)<br>
<br>

## #변수
**변수는 프로그램내에서 어떤 값을 저장해 놓을 수 있는 '보관상자'의 역할을 함**

### #변수명의 작명 규칙
* 첫 글자는 영문자나 미침표(.)로 시작하는데, 일반적으로 영문자로 시작
* 두 번째 글자부터는 영문자, 숫자, 마침표(.), 밑줄(_)을 사용 가능.
* 변수명에서 대문자와 소문자는 별개의 문자 취급.
* 변수명 중간에 빈 칸을 넣을 수 없습니다.<br>

### #변수저장
* 변수명 <- 변수 
* 변수 호출 : 변수명 or print(변수명)<br>
![wow](https://user-images.githubusercontent.com/80237099/227184228-5034b35d-6853-49ba-919e-4d318f7d2ff8.PNG)<br>
<br>

### #자료형
**변수에 저장할 수 있는 값의 종류**

#### 숫자형
* 자연수를 포함하여 양의 정수, 음의 정수, 0, 실수 등의 값으로, 산술 연산 가능
#### 문자형
* 숫자형과는 달리 산술연산을 할 수 없고, 문자형의 값은 반드시 작은 따음표나 큰 또음표를 묶어 표시해야 함.
#### 논리형
* TRUE, FALSE (반드시 대문자로 써야함. T, F 로 줄여 쓸 수 있다) 
#### 특수 값
* NULL : 비어있는 값. 자료형도 없고 길이도 0 

* NA : 결측값 (missing value). 값이 저장이 분명히 돼있어야 하지만 빠져있는 값

* NaN : 수학적으로 정의가 불가능한 값.   ex) sqrt(-3), 3/0

* inf, inf : 양의 무한대, 음의 무한대

<br>

### #백터
**R에서 제공하는 여러 개의 값을 한꺼번에 저장하는 기능으로, 일반적인 프로그래밍 용어로는 1차원 배열이라고도 함**

1. 변수명 <- c(변수1, 변수2, 변수3, 변수4...) = (변수1, 변수2, 변수3, 변수4...)<br>
예) ss <- c(1, 3, 5, 6) = (1, 3, 5, 6)
2. 변수명 <- 큰 변수:작은 변수 = 큰 변수와 작은 변수 사이의 숫자 나열<br>
예) ss <- 55:60 = (55, 56, 57, 58, 59, 60)
<br>


####  #tip 
1. 'chat GPT' 적극 활용



***

## 2023-03-16

## #현황 
### R, R Studio 설치 완료 <br>
* R을 이용한 간단한 연산<br>
![R설치 확인](https://user-images.githubusercontent.com/80237099/225614556-427ab41b-a08f-49aa-8af7-1c90bab37312.PNG)
<br>

* R Studio를 이용한 간단한 연산<br>
![RStudio설치 확인](https://user-images.githubusercontent.com/80237099/225615292-ff1d11f6-ddef-4197-8879-fb3065680436.PNG)
<br>

## #R
> R 언어는 비교적 최근에 개발된 프로그래밍 언어 중 하나

<br>

## #R 언어의 특정
1. 데이터 분석에 특화된 언어
2. R은 통계를 포함한 데이터 분석 작업에 활용할 목적으로 개발된 언어
3. R은 컴파일 과정 없이도 바로 실행하여 결과를 확인할 수 있음
4. R로 작성한 것을 프로그램이 아니라 스크립트(script)라고 부름

### 다양한 패키지 제공
* R은 데이터 분석에 사용되는 함수들을 종류별로 묶어 패키지 형태로 제공
* 데이터 분석에 필요한 거의 모든 기능이 제공
* 최신 이론이 발표되면 바로 R 패키지가 만들어지기 때문에 신속하게 최신 이론을 데이터 분석에 활용

### 미적이고 기능적인 통계 그래프 제공
* 데이터 분석에 있어서 분석 결과를 시각적으로 표현하는 것은 매우 중요함
* R에서 ggplot이라는 패키지를 통해 아름다우면서도 기능적인 그래프를 쉽게 작성할 수 있도록 지원함

### 편리한 프로그래밍 환경
* R프로그래밍을 위한 통합 개발 환경으로 R 스튜디오가 제공되어 모든 잡업을 R 스튜디오 내에서 처리할 수 있음
* 프로그램 작성·실행·수행 등 여러 작업을 수행하려면 보다 편리한 작업 환경이 필요함
* 이러한 작업 환경을 통합 개발 환경, IDE(Integrated Development Environment)라고 함
<br>
<br>

####  #tip 
```
1. MD file 최근 내용이 위로 올라오도록 작성 
2. Ctrl + Enter = Commit(R Studio)
3. console에서 괄호()를 안 닫았을 때 이어서 문서 완성 가능
4. 소스 코딩에서 ;은 Enter와 대응
```

***

## 2023-03-09

## #현황 
### 23-Project1-R파일 생성 및 GitHub 연결 완료 <br>
* 2021연도 생성한 WKH201840218 GitHub계정연결
* Public저장소 Pinned노출
* README.md file 생성
<br>

## #Commit, Push의 중요성 및 사용법
* 언제 어느 시간대에 작업 및 수정을 했는지 알아보기 위하여 Changes 스테이지 분류 후 수정 및 개발이 완료된 기능은 Staged Change 스테이지로 분류해서 Commit 저장
* 모든 작업을 마치고 Push하는 것 보다는 주기적으로 Commit해야함
* Push의 사용법은 자율적으로 사용하지만 기능하나 개발할 시에 Commit추천
* Commit완료한 프로젝트는 GitHub사이트로 Push(GitHub사이트 계정 연결)
<br>

## #저장소 생성 및 제거
* Repositories Page에서 New버튼 클릭 후 내부 Page에서 repository생성
* 특정 repository Page에서 Settings Page 진입 후 하단 Danger zone에 Delete this repository에서 삭제
<br>

## #프로그래밍
* 하드웨어(hardware) : 만질 수 있고 눈에 보이면서 형태를 가진 기계 장치(컴퓨터 내부 기계 부품 등)
* 소프트웨어(software) : 하드웨어의 기능을 원활하게 수행하기 위한 명령들의 집합(프로그램, 앱)
<br>
<br>

### tip : Git사이트의 Git Pro책참고 

