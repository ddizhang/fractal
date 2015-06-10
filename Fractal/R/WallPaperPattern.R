WallPaperPattern <-function(npoint= 1e5,x0=1, y0=1,  a =1, b=4, c=60 ){
  
  x = c(x0,rep(NA,npoint-1))
  y = c(y0,rep(NA,npoint-1))
  cor<-rep(0, npoint)
   
  for (i in 2:npoint){
    #iteration link function
    temp = iterfunc( x[ i-1], y[ i-1], a =1, b=4, c=60  )
    x[ i ] = temp[ 1 ]
    y[ i ] = temp[ 2 ]
    
    #color definition 
    cor[i]<-round(sqrt((x[i]-x[i-1])^2+(y[i]-y[i-1])^2),0 )
    
  }
  
  n.c<-length(unique(cor))
  cores<-heat.colors(n.c)
  
  plot( x, y, pch=".", col=cores[cor])  
}