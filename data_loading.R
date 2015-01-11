## This file is for loading the large dataset.
location <- paste(getwd(),"/household_power_consumption.txt",sep="")
## Visual inspection of text file shows 9 variables of date(character), time (character), number, number, number, number, number, number and number type in the same order. Separator is ; and ? denotes missing value
data<-read.table(location, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
dim(data) # 2075259 9
attach(data)
## Subsettign to get data of 2 days only
newData <- data[Date=="1/2/2007" | Date=="2/2/2007",]
attach(newData)
dim(newData) # 2880 9
## Combining date and time
x<-paste(Date, Time)
## Formatting newly created variable in ddmmyyyy hh:mm:ss format
newData$DateTime<-strptime(x,"%d/%m/%Y %H:%M:%S")
## Adding row names for convenience
rownames(newData)<-1:nrow(newData)
dim(newData) # 2880   10
attach(newData)