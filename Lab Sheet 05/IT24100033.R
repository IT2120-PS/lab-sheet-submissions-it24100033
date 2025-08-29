##setting the directory
setwd("C:\\Users\\Dilki\\Desktop\\SLIIT\\2nd year\\1st sem\\PS-IT2120\\lab sheets\\Labsheet 5")

##importing the data set
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")

##view the file in a separate window
fix(Delivery_Times)
attach(Delivery_Times)

##rename variables
names(Delivery_Times)<-c("DeliveryTime")

##attach file into R again
attach(Delivery_Times) 

##obtain histogram
hist(DeliveryTime,main="Histogram for deliver time") 
histogram<-hist(DeliveryTime,main="Histogram for deliver time ",breaks = seq(20,70,length = 10),right = FALSE) 

?hist 

##assign class limits of the frequency distribution
breaks<-round(histogram$breaks) 
##assign class frequency of the histogram
freq<- histogram$counts 
##assign mid point of each class
mids<-histogram$mids 


##creating the variable for the frequency distribution
classes<-c() 

for(i in 1:length(breaks)-1){ 
  
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")") 
  
} 
##merge same length columns
cbind(classes=classes,frequency= freq) 

##create frequency polygon to the same plot
lines(mids,freq)
plot(mids,freq,type = 'l',main = "Frequency for delivery time",xlab = "delivery time",ylab = "frequency",ylim=c(0,max(freq)))

##cumulative frequency polygon (ogive)
cum.freq<-cumsum(freq) 
new<-c() 
for(i in 1:length(breaks)){ 
  if(i==1){ 
    new[i]=0 
  } 
  else{ 
    new[i] = cum.freq[i-1] 
  } 
} 

plot(breaks,new,type = 'l',main ="cumalative Frequency Polygon for delivery time",xlab = "Shareholders",ylab = "Cumalative Frequency",ylim=c(0,max(cum.freq))) 
cbind(Upper = breaks,CumFreq=new) 
