#importing the data set

data<-read.csv("DATA 3.csv",header = TRUE)
fix(data)

#renaming the columns
names(data)<-c("Age","Gender","Accomadation")

#renaming the categorical data
 
data$Gender<-factor(data$Gender,c(1,2),c("male","female"))
data$Accomadation<-factor(data$Accomadation,c(1,2,3),c("Home","Boarded","Lodging"))
fix(data)

attach(data)


#creating frequency tables
gender.freq<-table(Gender)
acc.freq<-table(Accomadation)
gender.freq
acc.freq


#pie chart
pie(gender.freq,"pie chart for gender")
pie(acc.freq,"pie chart for accomadation")


#bargraph
barplot(gender.freq,main = "Gender",ylab = "Frequency")
abline(h=0) #x axis will start with zero

barplot(acc.freq,main = "accomadation",ylab = "Frequency")



#boxplot
boxplot(Age,main = "boxplot for age", ylab = "Age",outpch=8)


#Q3

#two-way frequency table
gender_acc.freq<-table(Gender,Accomadation)
gender_acc.freq


#stack barchart

barplot(gender_acc.freq,main = "gender and accomadation",legend=rownames(gender_acc.freq))
abline(h=0)

#clustered barcharts
barplot(gender_acc.freq,beside = TRUE,main = "gender and accomadation",legend=rownames(gender_acc.freq))
abline(h=0)


#side by side boxplot
boxplot(Age~Gender,main = "boxplot for age by gender", ylab = "Age",xlab = "Gender")
boxplot(Age~Accomadation,main = "boxplot for age by accomadation", ylab = "gender",xlab = "age")



#Q5

xtabs(Age~Gender+Accomadation)/gender_acc.freq
