
#Control statements

#if

x<-4
x
if (x<0) {
  print("possitive number")
}




#if else

x<-7
y<-0

if(x>y){
  print("X is greater than Y")
}else{
  print("Y is greater than X")
}




#nested else if

x<--3

if (x<0) {
  print("negetive")
}else if(x>0){
  print("possitive")
}else{
  print("x = 0")
}




#while loop(0-9)

i<-0
while (i<10) {
  print(i)
  i<-i+1
}



#for loop()

for (i in 0:10) {
  print(i)
}


#creating a data frame

index <- c(1,2,3)
name <- c("umesh","hansitha","dewasinghe")
marks <- c(78,99,98)

dataframe <- data.frame(index,name,marks)
dataframe
fix(dataframe)

#csv files and text files

data1 <- read.csv("DATA 2.csv") #reading from a csv file
fix(data1) #data editor mode

data2<- read.table("file name", header = TRUE, sep ="") # reading from a text file



#writing a dataframe to a csv file

write.csv(dataframe,"sampledata.csv") #sampledata.csv will be created
sample1 <- read.csv("sampledata.csv")
fix(sample1)
View(sample1)


#writing a dataframe to a txt file

write.table(dataframe,"sampledata.txt")
sample2 <- read.table("sampledata.txt", header = TRUE,sep = " ")
fix(sample2)
view(sample2)

#functions

function_01 <- function(a,b){
  y <- a+b
  return(y)
  }

function_01(5,6) #calling the function 





