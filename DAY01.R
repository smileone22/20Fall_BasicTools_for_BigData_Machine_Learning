# 주석? 프로그램의 전반적인 내용, 명령어의 내용등이 무엇을 의미하는지 알 수 있도록 사용자가 설명을 달아주는 기능 

num <- 10 #변수 num에 10 저장 

#R의 기초 사용법
#ctrl + enter: R의 명령어를 실행하는 기능
#shift + enter: 동일한 위치에 다른 argument(함수에 들어가는 값)을 올 수 있도록 하는 기능 
#R은 대소문자를 구별(소문자 x 와 대문자 X는 전혀 다른 것을 의미)

#Variable(변수)
#데이터를 저장하는 공간으로 변수의 이름을 선언하고 값을 저장하면 메모리에 로딩되어 관리가 됨. R에서는 변수값을 수정할 경우, 변수의 값이 수정되는 것이 아니라 새로운 값을 메모리에 할당. 


#메모리- stack- num이라는 이름으로 변수 생김,
#heap-10 저장(프로그램이 중단되지 않는 이상 사라지지 않는 영역),
#heap의 주소번지
#변수 아낄 필요 없음. 가르키는 위치가 바뀌지, 늘 새로운 메모리 생김
#참조변수
num <-10
num
num<- 5
num

#변수를 사용하는 방법
#1. 변수의 이름은 알파벳, 숫자, underbar, dot 등으로 구성되며 hypen(-)은 사용 불가하다
#2. 변수의 이름의 첫글자는 숫자로 시작할 수 없다
#3. 첫 글자는 알파벳 또는 .으로 시작해야하지만 .으로 시작할 경우에 바로 뒤에 숫자 사용 불가
.num <-15
.num 
#4. '.'으로 시작하는 변수를 만드는 경우 변수 리스트에는 보이지 않지만 실체는 존재한다
#5. '<-' 와 '='룰 사용하여 값을 할당하지만, 일반적으로 '<-'를 사용, 우측의 데이터를 왼쪽에 대입(같다는 의미 x)
#     cf. '<-'단축키는 alt+-(hypen)

str <-'R Programming'
str

"R Programming" -> str #가능하긴한데 윗부분이 더 일반적
str 

# rm(): delete values in variables
# rm(num)
rm(num)
rm(str)
rm(list=ls()) #deleting all variables
rm(a,A,num,str) #delete several variables
ls() # print out all variables in the memory 

#NULL: no data
a <- NULL
A <- "" #not null, empty data
a <- 100
b <- a/3

#objects() #check all objects/ objects = vairable
objects()

# types of variable - data type 
#1. numeric data
# integer, double - 표현 가능한 실수, 허수, 복소수(complex)로 나뉘어 지지만 R에서는 실수와 정수를 나눠서 분석하거나 다루지는 않는다
num.a <- 100
num.b <- 200
num.c <- 200

#class(): 변수들의 속성을 확인, check data type
class(num.a)

#str(): 자료형 및 구성요소 확인
str(num.a)
str(num.b)

#2. logical data
# only have two kinds- TRUE / FALSE or T/F
logic.b1 <- TRUE 
logic.b2 <- FALSE 
logic.b3 <- T 
logic.b4 <- F
class(logic.b1)

#3. character data
# saved in '' or ""
char1 <- "R"
char2 <-　'Programming'
char3 <- "10"
char4 <- '5'
class(char3)

result1 <- num.a + num.b
result1
result2 <- char3 + char4 #ERROR: 산술연산 불가 

#4. factor data
# 통계학에서 명목형/순서형 변수와 닮은 자료형으로 수치로서 어떤 의미를 갖는 것이 아닌, 범주를 나누기 위한 형태들을 의미 

#c(): 데이터나 객체들을 하나로 결합하여 저장하는 함수 
factor <- c("South Korea","US","UK","China","France","South Korea","US","China")
factor

#as.factor(): 단순 문자형을 factor형 변수로 변환
factor <- as.factor(factor)
factor
# levels is the keyword that shows what kinds of categories there are 