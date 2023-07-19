library(tidyr)

x = as.integer(-1:10000)
z = as.integer(1:-10000)
d1 <- expand.grid(x = x, y = z)
a = data.frame(x = d1[["x"]], y = d1[["y"]])

a %>% 
  ggplot( aes(.data[["x"]],.data[["y"]] )) + geom_point() 

c(1,1) %*% c(1,2)

tm1 = as.matrix(cbind(c(2,0), c(0,1)))

tm2 = as.matrix(cbind(c(cos(pi/4),sin(pi/4)), c(-sin(pi/4),cos(pi/4))))

tm = as.data.frame(as.matrix(a) %*% tm2)

tm %>% 
  ggplot( aes(.data[["V1"]],.data[["V2"]] )) + geom_point() 

as.data.frame(echelon(as.matrix(a))) %>% 
  ggplot( aes(.data[["x"]],.data[["y"]] )) + geom_point() 


x = -1:1
z = 1:-1
d1 <- expand.grid(x = x, y = z)
a = data.frame(x = d1[["x"]], y = d1[["y"]])

gaussianElimination(as.matrix(d1), verbose = TRUE)

a = cbind(c(1,-1,3,-1),c(2,1,7,2),c(0,3,1,4))
s= cbind(c(1,1,0), c(0,1,1), c(1,0,1))
t = cbind(c(1,1,0,0), c(1,0,1,0),c(0,1,1,0), c(1, 0,0, 1))
inv(t) %*% (a %*% s)
