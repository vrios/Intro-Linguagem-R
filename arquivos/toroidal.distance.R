toroidal.distances = function(object, tam)## returns distance matrix
{
  toroid.dist.matrix = matrix(NA,nrow=length(object[,1]),ncol=length(object[,1]))
  for (i in 1:length(object[,1]))
  {
    for(j in 1:length(object[,1])) 
    {
      
      x1=object[i,1]
      x2=object[j,1]
      y1=object[i,2]
      y2=object[j,2]
      
      dMin= sqrt(
                  min(abs(x1 - x2), tam - abs(x1 - x2)) * min(abs(x1 - x2), tam - abs(x1 - x2))
                  +
                  min(abs(y1 - y2), tam - abs(y1 - y2)) * min(abs(y1 - y2), tam - abs(y1 - y2))
                )
      toroid.dist.matrix[i,j]=dMin
      
    }
  }
  return (toroid.dist.matrix)
  
}

toroidal.distance= function (object, i, j, tam)
{
  x1=object[i,1]
  x2=object[j,1]
  y1=object[i,2]
  y2=object[j,2]
  
  dMin= sqrt(
    min(abs(x1 - x2), tam - abs(x1 - x2)) * min(abs(x1 - x2), tam - abs(x1 - x2))
    +
      min(abs(y1 - y2), tam - abs(y1 - y2)) * min(abs(y1 - y2), tam - abs(y1 - y2))
  )
  return (dMin)
}

