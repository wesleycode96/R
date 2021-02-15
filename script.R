#Entrada de Variáveis
x<-8
y=7
6->z
w<-"A"

#rm()#remove uma variavel
#ls()#mostra as variaveis

#Comandos de ajuda
#?sum
#help(abs)
#concatenar c(.)

#Tipos de Vetores
#o primeiro elemento é o um
x=c(1,2,3,6,7,12)
x[2]
x[2:5]#fatia os elementos dentro da concatenação
x[c(3,6)]#pega valores especificos dentro da lista ou seja(3 e o sexto elemento é 12)

y<-2.2:9 # cria sequencia de numeros de dois a nove 
y=2:10 # valores inteiros 

w<-vector() # declara uma variavel como se fosse um vetor 
w[1]<-9 # e vai adicinonando a variavel de acordo com as posições do elemento w[1]=5,w[2]=6

seq(4,20,by=0.5) #Me da uma sequencia  de 4 a 20 pulando 0.5 no caso os encrementos dos argumentos vão de 4 a 20 de 0.5 a 0.5
seq(4,20,length.out=10) #O length.out cria o numero de pontos até o ponto final.

#Tipos de Matriz 

matrix(c(1,2,3,4),2,2)#criar com um vetor ou concatenação dado o numero de linhas e de colunas, Nrow(numero de linhas) e Ncol(numero de colunas)
#matrix(c(n1,n2,n3)Nlinhas(nrow),Ncolunas)

M=matrix(c(1,2,3,4,5,6,7,8,9),3,3)
M[2,3] # retorna o valor que ta na segunda linha e na terceira coluna 
M[2:3,2:3] #retorna o valor extao que ta dentro da matriz  
M[,1]
M[2,]
#posso colocar uma variavel dentro do matrix
#x=c(2,3,4,5) matrix(x,2,2)

#Construção de matriz
matrix(c(1,2,3,4),2,2,byrow=T)#Byrow vai acrescentar por linha 
x<-c(2,7,6,5)
matrix(x,2,2)

#Matriz Diagonal

diag(5)#cria uma matriz diagonal

data.frame(c(1,5),c("A","B"))

N=data.frame(X=c(1,5,3),Y=c("A","B","C"))#

#Operadores Aritméticos
x<-c(2,3,4)
y<-c(5,7,6)

x%*%y #multiplicação por matriz 

#Estrutura Condicional
h="A"
x<-2
if(x==4){
  h="Certo"
}else{
  h="Errado"
}


ifelse(x==4,"Certo","Errado")

pot<-function(a=3,b){
  y=b^a
  return(y)
}


####################
#### Aula 10/12 ####
####################

#Exercícios
#1)
y <- c(12,14,35,7,6,12,5,22,7,17,9,11)
matrix(y,nrow=3,ncol=4)
matrix(y,nrow=3,ncol=4,byrow=TRUE)
#2)
x <- c(0,4,2,1,0,4,0,3,0,3,3,3,4,4,2,2,0)
x < 3
x[x<3]
#3)
# Primeiro modo
fatorial <- function(n){
  if(n==0){
    return(1)
  }else{
    produto = prod(seq(1,n))
    return(produto)
  }
}
# Segundo modo (recursÃ£o)
fatorial <- function(n){
  if(n==0){
    return(1)
  }else{
    return(n*fatorial(n-1))
  }
}
#4)
parouimpar <- function(n){
  if(n%%2==0){
    return("Par")
  }else{
    return("Impar")
  }
}
#5)
#a)
sum(1/seq(1,100))
#b)
1+sum(1/seq(22,by=20,length.out = 100))
#c)



## Comando factor()

a <- c("bom","bom","bom","médio","ótimo","ótimo","médio","ruim","ruim","ótimo")


b <- factor(a)
#Trocar o valor de um nível
levels(b)[4] <- "péssimo"

#Ordena os níveis baseado no argumento levels
x<-factor(a,levels=c("ruim","bom","médio","ótimo"),ordered = TRUE)

#Não ordena os níveis, somente troca a ordem que os níveis aparecem
x<-factor(a,levels=c("ruim","bom","médio","ótimo"))

#Retirar um determinado nível
droplevels(x,"médio")
levels(x)[3] <- NA

##list()
avaliacao <- list(nota=7,pesos=c(2,8),
                  conceitos=c("A","B","C","D"),
                  presenca=matrix(c(1,1,1,0,0,1,1,1,0),3,3,))
#Acessando valores da lista
avaliacao[1]
avaliacao[[1]]
avaliacao$nota
avaliacao[c("pesos","presenca")]
avaliacao[c(2,4)]

#Atribuir valores
avaliacao[1]<-8

#Criar novo elemento
avaliacao[["NotaParcial"]]<-6

#Removel elemento de lista
avaliacao[["presenca"]]<-NULL
