
#-----------------------------
#INTRO TO VECTORS
#Vector: saves more than one values. 
#  To compare with Scalar: values can be listed and it can only have one datatype #Scalar: saves only one value

vec.a = c(1,2,3,4,5)
vec.a


class() #tells data type
class(vec.a)


vec.b <- c(1:5) #To add numbers in order increasing by 1, use ":" in the for mat of start_number:end_number 
vec.c <- c(1:100)

vec.c <- c('South Korea','US','France','UK')
vec.c
class(vec.c) #character type

vec.d <- c(TRUE, FALSE, T,F)
class(vec.d) #logical data type 

vec.e <- c(100,TRUE, 10) #100,TRUE,10 > ON STACK > 100,1,10
#IF data types are different, based on the priority/Order of data types, data changes

vec.f <- c(1000,TRUE, "SMILE") 
vec.f #Becomes characters 

#Order of data type: logical < numerical < character
#----------------------------------
#Sequence function: seq()
# allows one to save several values in a variable
# seq(start_num, end_num,[by= increase_size])
# cf.option=[], if default, then increase by 1 

vec.g <- seq(1,10)
vec.h <- seq(1,2,3,4,5,6,7,8,9,10)
class(vec.g) #>integer 
class(vec.h) #>numeric
#Even though values inside vectors are the same, why different data type?
#numeric much larger concept than integer. int<numeric 

vec.i <- seq(1,10,by=2)
vec.i

#-----------------------------------
#COMPUTATING WITH VECTORS
#arithmetic operations: +(sum)-(substract)*(multiplication)/(division)
#If you compute with vectors, number gets computed to each and every data in the vector 
vec.i <- vec.g+5
vec.i

vec.gi <- vec.g+vec.i
vec.gi
#여러개의 값을 기억하는 벡터끼리 연산하면 같은 위치의 값과 연산이 됨. 단, 여러개의 값을 기억하는 벡터끼리의 연산은 값의 개수가 같아야 함. 

vec.g+vec.a
#만약 저장된 값의 개수가 다를 경우 값의 개수가 적은 쪽의 값이 처음부터 반복되어 연산 
#-----------------------------------
# HOW TO ACCESS DATA INSIDE VECTOR 
vec.j <- c(50,90,70,60,45,35,15,100,80,85)

# First value in vector has index 1 
vec.j[1]
# To check the length of vector , use length()
length(vec.j)

#To select index 1-5 values in vector j 
vec.j[1:5]

#To see all values except the 8th value
vec.j[-8]
length(vec.j[-8])

#To select all values except 1st and 3rd values
vec.j[-1:-3]

#To see from 3rd to 1st value in opposite order of original values
vec.j[3:1]

#--------------------------------------
# SEVERAL FUNCTIONS 
#rep(): choose certain values repeatedly
#rep(value_to_repeat,repeat_num)
rep(1,5)
rep(vec.i,2)
rep(1:3,each=2)
#max(): choose maximum number
max(vec.j)
#min(): choose minimum number
min(vec.j)
#mean(): calculate avg
mean(vec.j)
#sum(): calculate sum
sum(vec.j)


#문제1
# 1부터 10까지 벡터를 만들어 v1이라는 변수에 저장
v1 <- c(1:10)
# 각 원소 값들에 2를 곱한 결과로 v2 벡터 만들기
v2 <- v1*2
#v2에서 최대값 뽑아 max_v 에 저장
max_v <- max(v2)
#v2에서 최솟값을 뽑아 min_v에 저장
min_v <- min(v2)
#v2에서 평균값을 뽑아 avg_v에 저장
avg_v <- mean(v2)
#v2에서 합을 뽑아 sum_v에 저장
sum_v <- sum(v2)
#v2에서 5번째 요소를 제외하고 v3라는 변수에 저장
v3 <- v2[-5]
#모든 결과값을 화면에 출력 ;로 데이터 구분
v1;v2;max_v;min_v;avg_v;sum_v;v3

#문제2
#seq() 또는 rep()함수를 이용하여 아래 결과가 나오도록 출력
#1,3,5,7,9
seq(1,10,2)
#1,1,1,1,1,1
rep(1,6)
#1,2,3,1,2,3,1,2,3
rep(1:3,3)
#1,1,2,2,3,3,4,4
rep(1:4,each=2)

#----------------------------
# 산술 연산자: +(sum)-(substract)*(multiplication)/(division)**(power)%%(modulo-나머지)
# 할당 연산자: <- ,=,->
# 비교 연산자: >,<,>=,<=,==,!=
# 논리 연산자: 
#&&(AND): 두 식의 값이 모두 TRUE 인 경우 TRUE return
3>1 && 10>7
T && T
#||(OR): 두 식의 값 중 TRUE 있으면 TRUE return
T||F
T||T
FALSE||FALSE
3>1 ||10<7

#!(NOT): 두식의 값을 반대로 return
!TRUE 
!(3==4)

##-----------------------------
##MATRIX: 2D DATA 
#       1열(C) 2열(C) 3열(C)
#1행(R) 1       4     7
#2행(R) 2       5     8
#3행(R) 3       6     9
#(3,3)
#matrix(): 행렬 데이터를 만듬
#If did not designate values in rows and columns
mat.a <- matrix(c(1:12))
mat.a #12행 1 열 

mat.b <- matrix(c(1:12),ncol=4) #if use ncol option, it creates 4 columns, also creates 3 rows automatically
mat.b

mat.c <- matrix(c(1:12),nrow=4)
mat.c

#matrix 는 값이 채워지는 방향이 열방향을 우선으로 채워지게 되지만, byrow=T  옵션을 사용하면 행방향으로 데이터가 채워짐
mat.d <- matrix(c(1:12),nrow=4,byrow=T)
mat.d
#
#HOW TO ACCESS MATRIX DATA
mat.d[7] #matrix에서 지정된 위치의 값을 한개 선택한다 > 열우선 방식 
mat.d[1,] #1행 전체 선택 방법
mat.d[,1] #1열 전체 선택 방법
mat.d[3,1] #지정된 위치 (3행 1열)의 값을 한 개 선택 
#1행,2행 다 보고 싶으면
mat.d[1,];mat.d[2,] 
mat.d[1:2,]
mat.d[c(1,3),] #선택한 행들의 값이 연속적이지 않을 때-1행,3 행 
mat.d[,c(1,3)]
mat.d[-1,] #1행 제외 모든 값
mat.d[,-2] #2열 제외 모든 값값
mat.d[-c(1,3),] #1,3행 제외 모든 값 

#cbind() function? creating matrix with vectors - 열중심 
vec1 <- c(1,2,3,4,5)
vec2 <- c(2,4,6,8,10)
vec3 <- c(3,6,9,12,15)
#cbind(): 열 중심으로 벡터값을 행렬로 만들기
mat.e <- cbind(vec1,vec2,vec3)
mat.e

#rbind() function? creating matrix with vectors - 행 중심
mat.f <- rbind(vec1,vec2,vec3)
mat.f

#names() function? 벡터값에 제목(열이름)을 붙여줌
vec4 <- c(1:3)
vec4
names(vec4) <- c('1column','2column','3column')
vec4
names(vec4) <- LETTERS[1:3] #There is already made vector LETTERS
vec4

#colnmes() function? 행렬에서 열의 이름을 붙여줌
colnames(mat.f) <- c("column1","column2","column3","column4","column5")
mat.f

#rownames() function? 행렬에서 행의 이름을 붙여줌
rownames(mat.f) <- c("row1","row2","row3")
mat.f

#문제3
#1부터 10까지 출력하는데 3씩 증가하는 형태로 (1,4,7,10) 저장되는 벡터를 정의하여 v 변수에 저장.(단, 각각 값마다 "A","B","C","D"라는 이름을 부여)
v3 <- seq(1,10,3)
v3
names(v3) <- c("A","B","C","D")
names(v3) <- LETTERS[1:4]

#문제4
#아래와 같이 값이 구성되는 메트릭스를 정의하여 m1에 저장. 1,2,3의 벡터 n1, 4,5,6의 벡터 n2, 7,8,9의 벡터 n3을 이용하여 matrix 구성
n1 <- c(1:3)
n2 <- c(4:6)
n3 <- c(7:9)
matn <- cbind(n1,n2,n3)
matn
names(matn) <- c(',1',',2',',3')
colnames(matn) <- NULL
matn
