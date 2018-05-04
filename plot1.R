## Getting full dataset
data_electricity <- read.csv("C:/Users/ivishnoi/Downloads/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", header=T, sep=';', na.strings="?")

## Subsetting the data
data_new <- data_electricity[data_electricity$Date %in% c("1/2/2007","2/2/2007") ,]

## Plot 1
hist(data_new$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()