# 원강희 23-Project1-R README파일 

<br>

## 2023-04-06

## #현황 
* iris 데이터셋 연산
* 매트릭스와 데이터프레임에 함수 적용
* R에서의 입력과 출력

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


### #R에서의 입력과 출력
1. A <- min(변수명) : 변수중 제일 작은 수
2.  B <- max(변수명) : 변수중 제일 큰 수
<br>

![24](https://user-images.githubusercontent.com/80237099/230364536-9a3f00a5-9cc4-430b-bdb0-1fe33284e0a7.PNG)
<br>





####  #tip 
1. IR.1에는 iris의 전채 150개의 행 중 조건에 맞는 50개의 행만 저장
2. is.(code)는 확인(T/F)확인용 변수 

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

