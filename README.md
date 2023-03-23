# 원강희 23-Project1-R README파일 

<br>

## 2023-03-23

## #현황 
* R studio update 완료
* ggplot, cowsay install
* R 백터까지 진도 진행
<br>
<br>


## #패키지
> 패키지는 소프트웨어 분야에서는 컴퓨터 이용자가 일상 업무에서 사용하는 응용 프로그램(application program)의 한 가지이며, 시판되고 있는 완성품 프로그램 또는 프로그램 집합체이다.

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
> 변수는 프로그램내에서 어떤 값을 저장해 놓을 수 있는 '보관상자'의 역할을 함

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
> 변수에 저장할 수 있는 값의 종류
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
> R에서 제공하는 여러 개의 값을 한꺼번에 저장하는 기능으로, 일반적인 프로그래밍 용어로는 1차원 배열이라고도 함
1. 변수명 <- c(변수1, 변수2, 변수3, 변수4...) = (변수1, 변수2, 변수3, 변수4...)<br>
예) ss <- c(1, 3, 5, 6) = (1, 3, 5, 6)
<br>
<br>
2. 변수명 <- 큰 변수:작은 변수 = 큰 변수와 작은 변수 사이의 숫자 나열<br>
예) ss <- 55:60 = (55, 56, 57, 58, 59, 60)
<br>


####  #tip 
'chat GPT' 적극 활용


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
 MD file 최근 내용이 위로 올라오도록 작성<br>
 Ctrl + Enter = Commit(R Studio)<br>
 console에서 괄호()를 안 닫았을 때 이어서 문서 완성 가능<br>
 소스 코딩에서 ;은 Enter와 대응

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

