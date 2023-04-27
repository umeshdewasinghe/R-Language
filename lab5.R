getwd()
setwd("C:\\Users\\Umesh\\Downloads\\Lab 05-20230314")


#read data from a file
data1<-read.table("Data.txt",header = TRUE,sep=",")
data1
fix(data1)

#rename the table header
names(data1)<-c("x1","x2")

attach(data1)
attach(data1)

#Question1
hist(x2,main="Histogram for share holders") #"hist" is for creating a histrogram


#Question2
histrogram<-hist(x2,main = "Histogram for share holders",breaks = seq(130,270,length = 7))



#Qusetion3

#identify the break points
#"rounds" is used to get the whole number without decimals
breaks<-round(histrogram$breaks)
breaks

#identify the frequency of each class
freq<-histrogram$counts
freq

#identify the mid values
mid<-round(histrogram$mids)
mid

#construct a frequency table
#define a class range
classes<-c()

for (i in 1 :length(breaks)-1) {
  classes[i]<-paste0("[", breaks[i], "-", breaks[i+1] ,"]")
  
}
classes

#combining the class intervals and frequencies
cbind(class_intervals = classes,frequencies=freq)


#Question4
#frequency polygon
lines(mid,freq)#If "lines" is used polygin will be drawn on Histogram

plot(mid,freq,type = "o",main = "Frequency polygon",xlab = "shareholder",ylab = "frequency",ylim = c(0,max(freq)))
#"ylim = c(0,max(freq)" = limit of the y axis from 0 to max frequency

plot(mid,freq,type = "l",main = "Frequency polygon",xlab = "shareholder",ylab = "frequency",ylim = c(0,max(freq)))
#type = "l" lines only

plot(mid,freq,type = "p",main = "Frequency polygon",xlab = "shareholder",ylab = "frequency",ylim = c(0,max(freq)))
#type = "p" points only

#cumulative frequency
cum.freq<-cumsum(freq)
cum.freq

cfreq<-c()  #empty vector
for (i in 1:length(breaks)) {
  if(i == 1){
    cfreq[i] = 0
  }else{
    cfreq[i] = cum.freq[i-1]
  }
  
}

cbind(classes,mid,freq,breaks,cfreq)



#Question5
plot(breaks,cfreq,type = "o",main = "Frequency polygon",xlab = "shareholder",ylab = "cumulative frequency",ylim = c(0,max(cum.freq)))
cbind(upper = breaks,cum.freq = freq)


#question
abline(h=max(cfreq)*0.75,v=217)



