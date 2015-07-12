png(file='plot4.png', width=480, height=480)

par(mfrow = c(2, 2))

startDay = as.POSIXct(strftime("2007-02-01 00:00:00"))
endDay = as.POSIXct(strftime("2007-02-03 00:00:00"))
plot(household_power_consumption$Time, household_power_consumption$Global_active_power, xlim=c(startDay, endDay), xaxt="n", xlab="", ylab="Global Active Power (kilowatts)", type="l")
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")

plot(household_power_consumption$Time, household_power_consumption$Voltage, xlim=c(startDay, endDay), xaxt="n", xlab="", ylab="Voltage", type="l")
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")

plot(household_power_consumption$Time, household_power_consumption$Sub_metering_1, xlim=c(startDay, endDay), xaxt="n", type="l",xlab="", ylab="Energy sub metering", col="black")
lines(household_power_consumption$Time, household_power_consumption$Sub_metering_2, col="red")
lines(household_power_consumption$Time, household_power_consumption$Sub_metering_3, col="blue")
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(household_power_consumption$Time, household_power_consumption$Global_reactive_power, xlim=c(startDay, endDay), xaxt="n", xlab="", ylab="Global Reactive Power (kilowatts)", type="l")
axis.POSIXct(1, at=seq(startDay, endDay, by="day"), format="%a")

dev.off()

## Please note that the abbreviations of the days of the week appear in spanish (ju. = jueves; vi. = viernes; sá. = sábado).
