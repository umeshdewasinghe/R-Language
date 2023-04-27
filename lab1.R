# this is my first lab
print(100:150)
print(1:10)

#To get the working directory
getwd()

#change the working directory
#two backward slashes should be used
setwd("C:\\Users\\Umesh\\Documents")

#get the help
?solve

#documentation about data frame
help("data.frame")


#scaler operators

2+3 #addition
89-39 #deduction
10*12 #multiplication
40/2 #divition
5^2 #power
5**2 #power
600%%2 #modules


#logical operators

#  "<-" or "=" for local variables
# "<<-" for global variables

x = 2
y = 4

isTRUE(x==y)
isTRUE(x>y)
isTRUE(x<y)
isTRUE(x!=y)
isTRUE(x==2)
isTRUE(x>1 & y<5)
isTRUE(x>1 | y<3)


#local variables
a=5
b<-4
a+b



#packages

#installing packages
install.packages("ggglot2")


#vector
w<-c(1,2,3)
w

class(w) #defines the data type

d<-c("Umesh","dewasinghe")

class(d)

e<-c(1.0,1.4,1.5)
e
class(e)

f<-c(9>3,4>1)
f
class(f)


#factor
gender<-c(0,1,0,1,0)
gender
class(gender)
Gender<-factor(gender,c(0,1),c("female","male")) #catogorizing the data
Gender
class(Gender)


#list
p<-c(1,2,3)
q<-"Green"
r<-21
p
q
r
Data<-list(p,q,r)  #all the vectors will be concatinated as a list
Data
class(Data)


#matrix

Matrix1<-matrix(c(1,2,3,4),nrow = 2, ncol = 2,byrow = TRUE)
Matrix1
Matrix2<-matrix(c(1,2,3,4),nrow = 2, ncol = 2,byrow = FALSE)
Matrix2

#byrow = TRUE - matrix will be created by rows
#byrow = FALSE - matrix will be created by columns
#nrow - number of rows
#ncol - number of columns

mat1<- matrix(c(1,2,3,4,5,6,7,8,9,0),nrow = 2,ncol = 5,byrow = TRUE)
mat1



#data frame

name<-c("umesh","isuru","ishara","sehan")
height<-c(89,90,22,29)
weight<-c(60,72,80,85)
data_set<-data.frame(name,height,weight)
data_set
class(data_set)






