par(mfrow = c(2, 1))

x<- runif(10000) #�յ����(0,1)���� Ȯ�������� ����
h <- function(x) {
   -beta*log(1-x) #cdf�� ���Լ�
}
beta<-2 #���÷� �����Ͽ���.
hist(h(x), breaks = 1000, xlim = c(0,8), ylim = c(0, 0.6), freq = F)

#Ȯ������ X�� �� �����Ѱ��� üũ
f <- function(x) {
  1/beta*exp(-x/beta) #���������� Ȯ���е��Լ�
}
beta<-2 #���÷� �����Ͽ���.
plot(f, xlim = c(0,8), ylim = c(0, 0.6)) 
