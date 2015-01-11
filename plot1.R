## Sourcing the file to load data first
source("data_loading.R")
png(filename="plot1.png", width=480, height=480, units="px", bg="transparent")
## Given histogram (image) contains 12 bins with maximum frequency of 1200.
## Color of bins is red, y-axis label is 'frequency', x-axis label is
## 'Global Active Power (kilowatts)' and title is 'Global Active Power'.
## Font style is not mentioned in problem. Hence default style is assumed
hist(Global_active_power, col="red", main="Global Active Power", xlab=
       "Global Active Power (kilowatts)", breaks=12, ylim=c(0, 1200))
dev.off()