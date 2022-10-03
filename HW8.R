par(mfrow = c(2, 1))

x<- runif(10000) #균등분포(0,1)에서 확률변수를 생성
h <- function(x) {
   -beta*log(1-x) #cdf의 역함수
}
beta<-2 #예시로 삽입하였다.
hist(h(x), breaks = 1000, xlim = c(0,8), ylim = c(0, 0.6), freq = F)

#확률변수 X를 잘 생성한건지 체크
f <- function(x) {
  1/beta*exp(-x/beta) #지수분포의 확률밀도함수
}
beta<-2 #예시로 삽입하였다.
plot(f, xlim = c(0,8), ylim = c(0, 0.6)) 

