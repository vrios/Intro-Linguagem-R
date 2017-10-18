a = 5 + 5
"words are strings"
require('devtools')
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')
"git@github.com:vrios/teste-Intro-Linguagem-R.git"
"https://github.com/vrios/teste-Intro-Linguagem-R.git"
library(Rcmdr)
example(data.frame)
length(letters)
vetor1=LETTERS
vetor2=1:26

dataframe1=cbind(vetor1,vetor2) #organizando cada vetor como coluna
dataframe2=rbind(vetor1,vetor2) #organizando cada vetor como linha
class(dataframe1)
dados=data.frame(x=vetor1,y=vetor2)
