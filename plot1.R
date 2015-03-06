data = read.csv("household_power_consumption.txt", sep=";", na.strings="?")
feb = data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
feb$datetime = strptime(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot1.png", width=480, height=480)

par(mfcol=c(1,1))

hist(feb$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
