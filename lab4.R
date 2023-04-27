setwd("C:\\Users\\hansi\\OneDrive\\Desktop\\SLIIT\\Year 02\\Semester 2\\probability & Statistics\\Labs\\lab4")

data<-read.table("DATA 4.txt", header = TRUE,sep = " ")
fix(data)

names(data)<-c("Teams","Attendance","Salary","Years")
attach(data)

att.freq<-table(Attendance)
sal.freq<-table(Salary)
year.freq<-table(Years)
att.freq
sal.freq
year.freq


boxplot(Attendance,main = "boxplot for attendance",xlab="Attendance", outline = TRUE,horizontal = TRUE)
boxplot(Salary,main = "boxplot for salary",xlab="Salary", outline = TRUE,horizontal = TRUE)
boxplot(Years,main = "boxplot for years",xlab="years", outline = TRUE,horizontal = TRUE)


hist(Attendance, main = "histogram for attendace",ylab = "frequency")
hist(Salary, main = "salary for attendace",ylab = "frequency")
hist(Years, main = "years for attendace",ylab = "frequency")

abline(h=0)


stem(Attendance)
stem(Salary)
stem(Years)


mean(Attendance)
mean(Salary)
mean(Years)

median(Attendence)
median(Salary)
median(Years)


sd(Attendence)
sd(Salary)
sd(Years)


summary(Attendance)
summary(Salary)
summary(Years)


quantile(Attendance)[2]
quantile(Attendance)[4] 
IQR(Attendance)


get.mode<-function(y){
  counts<-table(y)
  names(counts)[counts == max(counts)]
}
get.mode(Years)



get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  
  u_bound<-q3+1.5*iqr
  l_bound<-q1-1.5*iqr
  
  print(paste("upper bound",u_bound))
  print(paste("lower bound",l_bound))
  print(paste("outliers",paste(sort(z[z<l_bound | z>u_bound]),collapse = ",")))
}

get.outliers(Years)


