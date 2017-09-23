sa <- function(fun, N, rho, t, theta){
  y = NULL
  theta.old = theta
  repeat{
    s = 0
    for(k in 1:N){
      f.old = fun(theta.old)
      theta.new = runif(1,-1,1) + theta.old
      f.new = fun(theta.new)
      if(f.new<f.old){
        theta.star = theta.new
        s = s+1
      }else{
        u = runif(1)
        b = (u <= exp(-(f.new-f.old)/t))
        theta.star = theta.new * b + theta.old * (1-b)
        s = s+b
      }
      theta.old = theta.star
      y = c(y, theta.star)
    }
    write(y, file = "anneal.result", ncol = 1, append = T)
    r = y[length(y)]
    y = NULL
    if(s==0) break
    t = rho*t
    if(t<.1) break
  }
  return(r)
}
