######################################################
# Introdu��o � Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################

#####Usando o R como calculadora

#Digite no R os c�digos abaixo.
#Dica: escreva neste arquivo, ao lado do comando, o que ele faz,
#como no exemplo abaixo

1 + 1 #soma os valores

# O s�mbolo # representa um coment�rio, isto �, tudo que vier � esquerda
# dele ser� ignorado quando o R ler o arquivo

34 - 72.3

# use pontos como separador de decimal
78 / 3
2 ^ 3
3 * 2
sqrt(2)
pi
log(x = 3,base = 10)
exp(x = 1)
#o que querem dizer estes valores dentro do parent�se? porque usamos o = aqui?

#####Atribui��o de valores e cria��o de objeto
#O que os comandos abaixo fazem?
objeto1=3
objeto1
objeto = 42
objeto
objeto.2 <- 42
objeto.2
# Os s�mbolos = e <- fazem basicamente a mesma coisa. Que coisa?
objeto.cubico <- objeto^3
resultado.1 <- (objeto.cubico / 3) + 7
objeto.texto <- "texto sempre vem entre aspas"
objeto.texto
objeto.texto.2 <- "42"

objeto.vetor.1 = 1:34
objeto.vetor.1
objeto.vetor2 = c(1, 74.5, 48)
objeto.vetor2

?seq
objeto.vetor3 = seq(from = 20, to = 32, by = 0.5)

# R tamb�m faz compara��es entre objetos
42 > 7
objeto == objeto.2
objeto == objeto.texto.2
# o que aconteceu acima?
7.1 <= 7.001
?"<"

#pedindo ajuda
?pi
?log
??lm
help(log)
help.search("anova")

#####Arquivos e diret�rios
# Como voc� descobre o diret�rio de trabalho?

# Como voc� lista o conte�do do diret�rio de trabalho?

# Como voc� define o diret�rio de trabalho?

# Como voc� carrega um arquivo de script?

# Como voc� salva os objetos que criou?

# Como voc� carrega os objetos que criou?

# como ver quis objetos est�o na sua �rea de trabalho?

# como remover objetos da �rea de trabalho?

##### Lidando com erros
# O que acontece quando voc� digita os comandos abaixo? Como consertar cada erro?
objetol
objeto .texto
Objeto
source("chuchu.R")
source(chuchu.R)
setwd("C:/CavernaDoDrag�o")
getwd
Getwd()
#dica: quando o R der erro, copie e cole a mensagem de erro no google