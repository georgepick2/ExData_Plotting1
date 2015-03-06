data = read.csv("household_power_consumption.txt", sep=";", na.strings="?")
feb = data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
feb$datetime = strptime(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot3.png", width=480, height=480)

par(mfcol=c(1,1))

with(feb, plot(datetime, Sub_metering_1, type="n", ylab="Energy sub metering", xlab=""))
with(feb, lines(datetime, Sub_metering_1, col="black"))
with(feb, lines(datetime, Sub_metering_2, col="red"))
with(feb, lines(datetime, Sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lw=1)

dev.off()
