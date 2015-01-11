## Sourcing the file to load data first
source("data_loading.R")
png(filename="plot2.png", width=480, height=480, units="px", bg="transparent")
## Visual inspection of given plot (image) suggests line graph with x=DateTime,
## y=Global_active_power, no x-axis label and y-axis label='Global Active Power
## (kilowatts)'. Font style is not mentioned in problem. Hence default style
## is assumed
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab =
       "Global Active Power (kilowatts)")
dev.off()