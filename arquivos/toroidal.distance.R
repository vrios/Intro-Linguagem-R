######################################################
# Toroidal distance calculator                    ####
# Vitor Passos Rios                               ####
# Universidade Federal da Bahia                   ####
# https://github.com/vrios/Intro-Linguagem-R/wiki#####
######################################################

## toroidal.distances() Receives object with two columns representing X and Y coordinates,
#  and tam representing size of torus.
## Does not work for higer dimensions or non-rectangular toruses
# returns shortest distances between all lines of object of the surface of torus

## toroidal.distance() Receives object with two columns representing X and Y coordinates,
#  two positions i and j inside object, and tam representing size of torus.
## Does not work for higer dimensions or non-rectangular toruses
# returns shortest distances between i and j of the surface of torus

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

