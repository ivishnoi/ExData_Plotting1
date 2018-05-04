## Getting full dataset
data_electricity <- read.csv("C:/Users/ivishnoi/Downloads/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header=T, sep=';', na.strings="?")

## Subsetting the data
data_new <- data_electricity[data_electricity$Date %in% c("1/2/2007","2/2/2007") ,]

#Making the plot
datetime <- strptime(paste(data_new$Date, data_new$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data_new$Global_active_power)
subMetering1 <- as.numeric(data_new$Sub_metering_1)
subMetering2 <- as.numeric(data_new$Sub_metering_2)
subMetering3 <- as.numeric(data_new$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()