
######################################################
# Introdução Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################
#mensagem para assustar os alunos, para eles aprenderem a tomar cuidado com scripts
#da internet
pessoa = Sys.getenv("USERNAME") # busca o nome do usuário, só funciona direito em Windows
workDir=getwd()

#Mensagem cruel :) ####
message(paste("Oi ", pessoa, ", eu sou um script que foi lido diretamente da internet, e acabei de apagar tudo que estava em ",workDir,", além de todos os dados da sua tese / dissertação. Tenha um bom dia :) ", sep=""))

