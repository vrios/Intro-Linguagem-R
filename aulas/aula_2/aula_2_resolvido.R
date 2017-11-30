######################################################
# Introdução Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################

#quando possível, sua resposta deve ser um código do R

#####Trabalhando com dados####
# o que é um dataframe? Qual a diferneça entre um dataframe e um list?

# o que as funções abaixo fazem? O que elas retornam?####
is.vector()
is.numeric()
is.character()
is.matrix(peso)
is.na()
is.data.frame()


#o que queremos dizer quando dizemos uma função "retorna" alguma coisa?
retornado=is.data.frame(caixeta)
retornado

#o que a função summary() faz?


#Três áreas foram submetidas aplicação de três adubos diferentes, e uma foi
#mantida como controle. A biomassa seca (kg) por parcela foi medida para
#verificar se houve efeito do adubo. Os dados obtidos foram:

#(Controle)	A	37	34	36	42	31  33
#B	62	54	57	64	60
#C	63	58	60	62	61 44
#D	41	37	38	49	35 49
#Crie um dataframe com estes dados

#Calcule a média de cada tipo de adubo, sem usar summary(), usando o dataframe
#que você criou acima
mean(obj$biomassa[obj$areas=="a"])


#que problemas você teve ao fazer o exercício acima?

# O que a função unique() faz?

#Usando o conjunto de dados caixeta.csv, disponivel em
#http://ecologia.ib.usp.br/bie5782/doku.php?id=dados:dados-caixeta, calcule
#quantas espécies estão presentes na coluna especie. Para ler o arquivo, execute
#o código abaixo
caixeta = read.table("arquivos/caixeta.csv", header=T, sep=",", as.is=T)
# o arquivo deve estar no seu diretório de trabalho
str(caixeta) #o que este comando faz?
summary(caixeta)

#podemos criar uma coluna a mais no nosso dataframe apenas dizendo ao R o que
#colocar lá. Por exemplo, criamos uma coluna com o nome do coletor do dado
caixeta$coletor= "Darwin" #regra da reciclagem
str(caixeta)

#agora adicione no objeto caixeta uma coluna chamada "desvio" com o quanto a
#altura de cada árvore difere da média de todas as árvores
caixeta$desvio = caixeta$h - mean(caixeta$h)
desvio =caixeta$h - mean(caixeta$h)
caixeta$desvio = desvio
#Usando a função table(), conte quantos indivíduos de cada espécie existem
table(caixeta$especie)
#A função table() também pode contar por espécie em cada local, depois por local
#em cada espécie). Como?
table(caixeta$especie, caixeta$local)
#crie um objeto chamado pequenas que contenha todas as árvores com altura (h)
#menor que um metro.(Os dados no arquivo estão em centímetros)
pequenas = caixeta[caixeta$h < 100,]
#crie um objeto chamado grandes que contenha todas as árvores acima de 3 metros
grandes = caixeta[caixeta$h > 300,]
#crie um objeto chamado medias que todas as árvores com alturas de um metro a
#tres metros
media = caixeta[caixeta$h >= 100 & caixeta$h<=300,]
#agora em uma linha de comando, crie um objeto que contenha a quantidade de
#árvores pequenas, médias e grandes, separadamente
todas = c(
  length(pequenas$local) #comprimento da coluna local do objeto pequenas
  ,length(media$local)
  ,length(grandes$local)
)

todas
dim(pequenas)
a=0

#Crie um objeto chamado obj somente com os individuos de "Alchornea
#triplinervia" Em quantas localidades esta espécie ocorre? Qual comando para
#encontrar essa informação?
obj = caixeta[caixeta$especie == "Alchornea triplinervia",]

table(obj$local)
unique(obj$local)

#podemos remover dados de um dataframe, usando o sinal de menos

caixeta.sem.tabebuia = caixeta[ - which(caixeta$especie=="Tabebuia cassinoides"),]
sort(
  unique(caixeta.sem.tabebuia$especie),
)

#agora crie um objeto removendo todas as "Tabebuia cassinoides" do local retiro
#(somente do local retiro)
caixeta.sem.retiro = caixeta[
  !c( #exclamação é não: não pegue o que cumprir as                                   #condições abaixo
    caixeta$local == "retiro"
    &
      caixeta$especie == "Tabebuia cassinoides"
  ),
  ]



d<-d[!(d$A=="B" & d$E==0),]

sort(unique(caixeta$local))

table(caixeta.sem.retiro$especie,caixeta.sem.retiro$local)

#crie os objetos abaixo, junte eles num dataframe de duas colunas, uma id, e uma com os outros objetos, chamado comNA,
#depois crie um novo objeto chamado semNA, removendo todas as linhas que
#contenham NA, (dica: só se usa "" para valores do tipo
#character)
id = 1:80
a = c(121.72355, 103.79754, 130.15442, 98.29305, 103.43365, 102.44998,
      NA, 111.07215, 113.74047, 103.16081, 80.87149, 98.66692,
      65.09549, 155.74965, 88.30168, 147.43610, 114.60806, 109.87433,
      149.54772, 83.54137
)
b = c(77.91352, 78.07251, 81.95604, 75.64862, 78.45213, 79.11058,
      79.98952, 79.18127, 840.1635, 74.86860, 82.01886, 78.26936,
      77.94691, 78.75372, 77.64901, NA, 77.19803, 72.48175,
      83.45336, 78.99681
)
c = c(127.9366, 201.7158, NA, 136.5880, 131.7213, 118.1486,
      125.7534, 139.6544, 163.5890, 139.7455, NA, 141.4450, 110.7311,
      157.5921, 176.8437, 102.8659, 121.8286, 134.7097, 157.1392, 166.7133
)
d = c(191.3721, 216.1671, 165.4380, 196.2730, 172.6565, 178.2955,
      193.6687, NA, 160.2968, 208.4400, 204.0934, 208.1798,
      186.6380, 193.9446, NA, 198.6853, 213.8838, 210.1881,
      209.9109, 210.9228
)
comNA=data.frame(id,c(a,b,c,d))
semNA = comNA[!is.na(comNA$c.a..b..c..d.),]
semNA2 = na.omit(comNA)


#Abaixo temos dados de tamanho de mandíbula de chacal dourado. Crie um dataframe
#com esses dados. Qual a média por sexo? E para a espécie? Guarde estes valores
#em tres objetos diferentes.
#machos: 120 107 110 116 114 111 113 117 114 112
#femeas: 110 111 107 108 110 105 107 106 111 111
#Quantos machos têm a mandíbula
#maior do que a média das fêmeas?

machos = c(120, 107, 110, 116, 114, 111, 113, 117, 114, 112)
femeas = c(110, 111, 107, 108, 110, 105, 107, 106, 111, 111)
chacais = data.frame(machos,femeas)
media.m = mean(machos)
media.f = mean(femeas)
media.sp = mean(c(machos,femeas))
machos.grandes = machos [machos > media.f] #usando os objetos separados
machos.grandes
machos.grandes2 = chacais$machos[chacais$machos > media.f]#usando o dataframe

teste.de.normalidade = shapiro.test(dragoes$y)
if (teste.de.normalidade$p.value <= 0.05) {
  fit = lm(dragoes$y ~ dragoes$x)
  summary(fit)
}




#escreva **uma** linha de código que testa se um número é par, e caso seja,
#manda uma mensagem dizendo "par". dica: use a função %% (resto da divisão, ou
#remainder em inglês) e a função message()

if (pi %% 2== 0){
  message("par")
} else{
  message("impar")
}

teste.de.normalidade=shapiro.test(dragoes$y)
if (teste.de.normalidade$p.value >= 0.05){
  fit = lm(dragoes$y ~ dragoes$x)
  summary(fit)
  x11()
  plot(dragoes, main="normal")
} else{
  kruskal.test(dragoes)
  x11()
  plot(dragoes, main= "kruskal")
}


for (i in 1:length(dragoes$y)) {
  a = dragoes$y[i]
  message(a)
}
cx= caixeta[,-1]
cx= cx[,-6]




for (i in 1:length(cx)) {
  x11()
  plot(cx[,i])
}


for (i in 10:1)#coloque aqui uma sequencia com quantas vezes vc quer repetir seu código abaixo
{
  message(i)#insira seu código repetititvo aqui
}


#agora crie um código  como acima, mas que diga "par" se for par e "impar" se
#for impar. Dica: leia sobre as funções else e ifelse

#crie um ciclo (for) que mostre o console todos os inteiros de 1 até 10, um por
#um

#crie um ciclo (for) que some todos os inteiros de 25 até 43, guardando esses
#valores num objeto soma (dica: crie o objeto soma com valor zero antes do
#código do ciclo)


#####Desafio level Hard#####
#Escreva um código que escreva os números de um a 100, com as seguintes
#condições: Se o número for multiplo de 3, ao invés do dígito, escreva "Fu". Se o número for múltiplo de 5, ao invés do dígito, escreva "bá". Para números que forem multiplos tanto de 3 quanto de 5, escreva "Fubá". A melhor solução ganha um chocolate

for (i in 1:100){
  fuba =""
  if (i %% 3 == 0){fuba=paste(fuba,"Fu",sep="")}
  if (i %% 5 == 0){fuba=paste(fuba,"Bá",sep="")}
  if( !( i %% 3 == 0 | i %% 5 == 0)) {print(i)} else {print(fuba)}
}

for(i in 1:100){
  message(
          paste(if(i %% 3 == 0) "Fu"
                , if(i %% 5 == 0) "bá"
                , if(i %% 3 != 0 & i %% 5 != 0) i, sep="")
  )
}

for (i in 1:100) {
  if (i %% 3 == 0 & i %% 5 == 0) {
    message("Fub?")
  } else if (i %% 3 == 0) {
      message("Fu")
  } else if (i %% 5 == 0) {
      message("b?")
    }else message(i)
}









# vectorized fizzbuzz
m <- 1:100
m[which(m%%5==0)][which(m%%3==0)] <- "Fubá"
m[which(as.numeric(m)%%3==0)] <- "Fu"
m[which(as.numeric(m)%%5==0)] <- "bá"
print(m)



source("https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/scriptOnline.R")

caixeta = read.csv("https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/caixeta.csv")


if(!require("chuchu")) {#substitua chuchu pelo pacote desejado
  stop("pacote chuchu não encontrado, instale para proseguir")
}
