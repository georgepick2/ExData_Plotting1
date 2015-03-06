data = read.csv("household_power_consumption.txt", sep=";", na.strings="?")
feb = data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
feb$datetime = strptime(paste(feb$Date, feb$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="plot2.png", width=480, height=480)

par(mfcol=c(1,1))

with(feb, plot(datetime, Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab=""))
with(feb, lines(datetime, Global_active_power))

dev.off()
