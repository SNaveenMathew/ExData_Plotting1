## Sourcing the file to load data first
source("data_loading.R")
png(filename="plot3.png", width=480, height=480, units="px", bg="transparent")
## Visual inspection of given image (plot) suggests y-axis label='Energy sub
## metering', no x-axis label and legend in topright corner. Each graph is a
## line graph. Hence first graph is drawn and others are added using line
## function. Lines can be drawn in any order. Line width was found to be 1 using
## trial and error
plot(DateTime, Sub_metering_1, type="l", col="black", xlab="",
     ylab="Energy sub metering")
lines(DateTime, Sub_metering_2, col="red")
lines(DateTime, Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()