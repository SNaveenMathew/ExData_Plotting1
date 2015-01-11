## Sourcing the file to load data first
source("data_loading.R")
png(filename="plot4.png", width=480, height=480, units="px", bg="transparent")
## Dividing plot area into 2 rows and 2 columns. Plotting order: Row-wise
par(mfrow=c(2, 2))
## Plotting Global_active_power vs DateTime in top-left corner
plot(DateTime, Global_active_power, type = "l", xlab="", ylab="Global Active Power")
## Plotting voltage vs DateTime in top-right corner
plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage")
## Plotting Energy sub metering vs DateTime in bottom-left corner
plot(DateTime, Sub_metering_1, type="l", col="black", xlab="",
     ylab="Energy sub metering")
## Adding lines to same plot area
lines(DateTime, Sub_metering_2, col="red")
lines(DateTime, Sub_metering_3, col="blue")
## Adding legend, but without border
legend("topright", bty="n", col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
## Plotting Energy sub metering vs DateTime in bottom-right corner
plot(DateTime, Global_reactive_power, type="l", col="black", xlab="datetime")
dev.off()