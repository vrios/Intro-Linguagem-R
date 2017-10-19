######################################################
# Introdução à Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################

#####Usando o R como calculadora

#Digite no R os códigos abaixo.
#Dica: escreva neste arquivo, ao lado do comando, o que ele faz,
#como no exemplo abaixo

1 + 1 #soma os valores

# O símbolo # representa um comentário, isto é, tudo que vier à esquerda
# dele será ignorado quando o R ler o arquivo

34 - 72.3

# use pontos como separador de decimal
78 / 3
2 ^ 3
3 * 2
sqrt(2)
pi
log(x = 3,base = 10)
exp(x = 1)
#o que querem dizer estes valores dentro do parentêse? porque usamos o = aqui?

#####Atribuição de valores e criação de objeto
#O que os comandos abaixo fazem?
objeto = 42
objeto
objeto.2 <- 42
objeto.2
# Os símbolos = e <- fazem basicamente a mesma coisa. Que coisa?
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

# R também faz comparações entre objetos
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

#####Arquivos e diretórios
# Como você descobre o diretório de trabalho?

# Como você define o diretório de trabalho?

# Como você carrega um arquivo de script?

# Como você salva os objetos que criou?

# Como você carrega os objetos que criou?

##### Lidando com erros
# O que acontece quando você digita os comandos abaixo?
objeto2
objeto .texto
Objeto
source("chuchu.R")
#dica: quando o R der erro, copie e cole a mensagem de erro no google