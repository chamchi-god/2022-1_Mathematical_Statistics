par(mfrow = c(2, 1))

f <- function(y){1/(y*sqrt(2*pi))*exp(1)^(-(log(y)^2)/2)}
plot(f, xlim = c(0,8))

x <- rnorm(10000) ### draw n Normals,
### mean mu and st.dev sigma
y <- exp(x) ### y = e^x
hist(y, breaks = 1000, xlim = c(0,8)) ### histogram
