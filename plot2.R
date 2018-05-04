## Getting full dataset
data_electricity <- read.csv("C:/Users/ivishnoi/Downloads/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header=T, sep=';', na.strings="?")

## Subsetting the data
data_new <- data_electricity[data_electricity$Date %in% c("1/2/2007","2/2/2007") ,]

#Making the plot
datetime <- strptime(paste(data_new$Date, data_new$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data_new$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
